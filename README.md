# ICMPv4-Echo-Responder

## Uvod

Internet Control Message Protocol (ICMP) predstavlja jedan od ključnih protokola u okviru TCP/IP arhitekture. Funkcioniše na mrežnom sloju i prvenstveno se koristi za razmjenu kontrolnih poruka između mrežnih uređaja. ICMP paketi obično nastaju kao odgovor na određeni problem u komunikaciji ili kao rezultat mrežnih provjera drugih  protokola [1].

Kao što je prikazano na slici 1, ICMP zaglavlje sastoji se od nekoliko osnovnih polja: 
* Type (tip)
* Code (kod)
* Checksum (kontrolna suma).
  
U dijelu podatka mogu biti definisana dodatna polja, poput identifikatora i sekvencijskog broja, koji se koriste u ICMP echo zahtjevima (tip 8) i echo odgovorima (tip 0) [1].

<div align="center">
<img src="Docs/image.png" alt="ICMP format okvira" width="500">
<p><strong>Slika 1:</strong> Prikaz ICMP format okvira.</p>
</div>
ICMPv4 (Internet Control Message Protocol verzija 4) je verzija ICMP protokola koja se koristi unutar IPv4 mreža. Za razliku od nekih drugih protokola višeg sloja, ICMPv4 ne koristi pseudo-zaglavlje prilikom izračunavanja kontrolne sume. Kontrolna suma se računa samo na osnovu ICMP zaglavlja i podataka.
Kod ICMPv4 Echo Respondera, najvažnije su informativne poruke Echo Request (tip 8) i Echo Reply (tip 0). Kada uređaj primi Echo Request, generiše Echo Reply i pri tome je potrebno pravilno podesiti kontrolnu sumu. Budući da se pri kreiranju Echo Reply poruke mijenja prvenstveno polje Type (sa 8 na 0), kontrolna suma se može prilagoditi postepeno, što ubrzava proces odgovora i smanjuje potrebu za ponovnim izračunavanjem cijelog paketa [2].


## Avalon ST
Avalon-ST (Avalon Streaming) je standardno sučelje za jednosmjerni tok podataka sa ready/valid handshake protokolom.

#### Generic parametri

| Parametar     | Tip                        | Opis                                                                 |
|---------------|----------------------------|----------------------------------------------------------------------|
| IP_ADDRESS  | STD_LOGIC_VECTOR(31 DOWNTO 0) | IP adresa čvora, koristi se za provjeru odredišne adrese u ICMP paketima. |
| MAC_ADDRESS | STD_LOGIC_VECTOR(47 DOWNTO 0) | MAC adresa čvora, koristi se za formiranje Ethernet zaglavlja Echo Reply paketa. |


#### Ulazni signali (IN)

| Signal      | Tip                        | Opis                                                                 |
|-------------|----------------------------|----------------------------------------------------------------------|
| clock     | STD_LOGIC                | Glavni takt modula.                                                   |
| reset     | STD_LOGIC                | Resetuje modul i FSM u početno stanje (IDLE).                       |
| in_data   | STD_LOGIC_VECTOR(7 DOWNTO 0) | Ulazni bajtovi podataka sa Avalon-ST interfejsa.                     |
| in_valid  | STD_LOGIC                | Indikator da je in_data ispravan.                                     |
| in_sop    | STD_LOGIC                | Start of Packet – označava početak paketa.                            |
| in_eop    | STD_LOGIC                | End of Packet – označava kraj paketa.                                 |
| out_ready | STD_LOGIC                | Indikator da je odredište spremno za prijem izlaznih podataka.        |


#### Izlazni signali (OUT)

| Signal       | Tip                        | Opis                                                                 |
|--------------|----------------------------|----------------------------------------------------------------------|
| in_ready   | STD_LOGIC                | Signal da modul može primiti novi bajt podataka.                     |
| out_data   | STD_LOGIC_VECTOR(7 DOWNTO 0) | Izlazni bajtovi podataka (Echo Reply paket).                         |
| out_valid  | STD_LOGIC                | Indikator da je out_data ispravan i može biti pročitan.              |
| out_sop    | STD_LOGIC                | Start of Packet – označava početak Echo Reply paketa.                |
| out_eop    | STD_LOGIC                | End of Packet – označava kraj Echo Reply paketa.                     |

---
# Identifikovani scenariji


## Scenarij 1 - ICMP Echo Request i Reply

Ovaj scenarij prikazuje razmjenu ICMP Echo Request i ICMP Echo Reply paketa između requester i responder strane. Nakon prijema zahtjeva, responder formira Echo Reply paket sa zamijenjenim izvorišnim i odredišnim adresama, dok ICMP zaglavlje ima polje Type postavljeno na vrijednost 0. Payload i identifikaciona polja prenose se neizmijenjena.

<div align="center">
<img src="FSM-draw_io/sc2.png" alt="ICMP format okvira" width="500">
<p><strong>Slika 2:</strong> Prikaz protokola razmjene ICMP Echo Request i Echo Reply paketa.</p>
</div>

U ovom scenariju verifikuje se sposobnost ICMPv4 Echo Responder modula da nakon prijema kompletnog ICMP Echo Request paketa, generiše i pošalje odgovarajući ICMP Echo Reply paket. Po detekciji kraja ulaznog paketa (signal in_eop), modul započinje proces formiranja odgovora, pri čemu se zamjenjuju izvorišne i odredišne MAC i IP adrese, dok se ICMP Type polje postavlja na vrijednost Echo Reply (0). Slanje ICMP Echo Reply paketa odvija se bajt po bajt, u kontinuiranom režimu, uz pretpostavku da je izlazni interfejs uvijek spreman za prihvatanje podataka, zbog čega je signal out_ready konstantno aktivan. Tokom cijelog trajanja slanja odgovora signal out_valid je aktivan. Na taj način se označava da su izlazni podaci validni. Signal out_sop označava početak, a signal out_eop kraj Echo Reply paketa.

<div align="center">
<img src="WaveDrom/sc1_wavedrom.png" alt="ICMP format okvira" width="1000">
<p><strong>Slika 3:</strong> Prikaz scenarija 1 u WaveDromu.</p>
</div>

U Scenariju 1 ulazni bajtovi D1–D50 imaju sljedeće protokolno značenje:

1. D1-D14 (Ethernet header): Ethernet zaglavlje uključuje sljedeća polja:
  - D1–D6 (Destination MAC): modul prima i upoređuje Destination MAC adresu sa parametrom MAC_ADDRESS,
  - D7–D12 (Source MAC): izvorišna MAC adresa Ethernet okvira,
  - D13–D14 (EtherType): vrijednost 0x0800 (IPv4).
2. D15–D34 (IPv4 header): iz IPv4 zaglavlja se provjerava da li je odredišna IP adresa jednaka IP_ADDRESS i da li je Protocol polje postavljeno na ICMP. IP zaglavlje se može opisati na sljedeći način:
  - D15: Ovo polje sadrži verziju IP protokola (IPv4) i dužinu zaglavlja,
  - D16: Označava prioritet i kvalitet servisa (ToS),
  - D17–D18: Ukupna dužina IP paketa (zaglavlje + payload),
  - D19–D20: Identifikator fragmentacije,
  - D21–D22: Polja vezana za fragmentaciju,
  - D23: Time To Live (TTL) koji ograničava životni vijek paketa u mreži,
  - D24: Protocol polje IPv4 zaglavlja,
  - D25-D26: Header Checksum,
  - D27-D30: Izvorišna IP adresa pošiljaoca,
  - D31-D34: Odredišna IP adresa IPv4 paketa.
3. D35–D42 (ICMP header): ICMP zaglavlje ima fiksnu dužinu od 8 bajtova i sastoji se od sljedećih polja:
  - D35: Type
  - D36: Code
  - D37–D38: Checksum
  - D39–D40: Identifier
  - D41–D42: Sequence Number
4. D43–D50 (Payload): predstavlja završni dio okvira i u ovom scenariju se tretira kao niz korisničkih podataka koji se ne obrađuju, već se u potpunosti i neizmijenjeni prenose u odgovor.

Odredišna MAC adresa, odredišna IP adresa i ICMP Type polje imaju ključnu ulogu u implementaciji, jer se njihova vrijednost provjerava u VHDL kodu kako bi se obradili samo ICMP Echo Request paketi namijenjeni ovom modulu. Nakon prijema posljednjeg bajta (D50), modul započinje generisanje ICMP Echo Reply paketa. Izlazni bajtovi takođe se prenose bajt-po-bajt i imaju sljedeće značenje:
1. R1 – R14: Ethernet zaglavlje sa zamijenjenim izvorišnim i odredišnim MAC adresama,
2. R15 – R34: IPv4 zaglavlje sa zamijenjenim izvorišnim i odredišnim IP adresama,
3. R35 – R42: ICMP zaglavlje sa poljem Type postavljenim na vrijednost 0 (Echo Reply),
4. R43 – R50: Payload identičan payloadu primljenog Echo Request paketa.

## Scenarij 2 - Nije ICMP Echo poruka (ignorisanje)

U ovom scenariju ICMPv4 Echo Responder prima ispravan paket koji nije ICMP Echo Request ili nije namijenjen ovom uređaju. Na osnovu analize Ethernet-a, IPv4, MAC adrese i ICMP zaglavlja, paket se ignoriše. U ovom slučaju ne dolazi do generisanja ICMP Echo Reply poruke.

<div align="center">
<img src="FSM-draw_io/sc3.png" alt="ICMP format okvira" width="500">
<p><strong>Slika 4:</strong> Prikaz protokola ignorisanja paketa koji nije ICMP Echo Request.</p>
</div>

U ovom scenariju paket se ignoriše zbog neispravne odredišne MAC adrese u Ethernet zaglavlju. Ukoliko MAC adresa ne odgovara lokalnoj MAC adresi ICMPv4 Echo Respondera, paket se odbacuje na Ethernet sloju i ne dolazi do obrade IPv4 i ICMP zaglavlja, niti do generisanja ICMP Echo Reply poruke.
Prijem započinje aktiviranjem signala in_sop u trenutku D1, nakon čega FSM obrađuje Ethernet zaglavlje u intervalu D1–D14. Bajtovi D1–D6 predstavljaju odredišnu MAC adresu, tokom kojih se detektuje neusklađenost. Iako se greška prepoznaje na početku (D1-D6), modul završava prijem Ethernet zaglavlja, a zatim prelazi u stanje IGNORE i odbacuje ostatak paketa.

<div align="center">
<img src="WaveDrom/s2_1wavedrom.png" alt="ICMP format okvira" width="1000">
<p><strong>Slika 5:</strong> Prikaz scenarija 2 u WaveDromu za slučaj pogrešne MAC adrese.</p>
</div>

U ovom scenariju ICMPv4 Echo Responder prima Ethernet okvir sa ispravnom odredišnom MAC adresom. U ovom slučaju, Ethernet zaglavlje se obrađuje. Nakon toga, prelazi u stanje IP_HDR u kojem se obrađuje IPv4 zaglavlje u intervalu D15–D34. IPv4 zaglavlje ima fiksnu dužinu od 20 bajtova i sadrži osnovna kontrolna polja, uključujući izvorišnu i odredišnu IP adresu. Tokom obrade IPv4 zaglavlja vrši se provjera odredišne IP adrese. Ukoliko IP adresa ne odgovara lokalnoj IP adresi ICMPv4 Echo Respondera, paket se odbacuje na mrežnom sloju. FSM zatim prelazi u stanje IGNORE, u kojem se ostatak paketa odbacuje, nema obrade ICMP zaglavlja i ne generiše se ICMP Echo Reply poruka. Po prijemu signala in_eop, FSM se vraća u stanje IDLE.

<div align="center">
<img src="WaveDrom/sc2_2wavedrom.png" alt="ICMP format okvira" width="1000">
<p><strong>Slika 6:</strong> Prikaz scenarija 2 u WaveDromu za slučaj pogrešne IP adrese.</p>
</div>

U ovom scenariju ICMPv4 Echo Responder ispravno obrađuje Ethernet zaglavlje (D1–D14) i IPv4 zaglavlje (D15–D34), nakon čega FSM prelazi u stanje ICMP_HDR. Tokom obrade ICMP zaglavlja (D35–D42) provjerava se tip ICMP poruke i osnovna kontrolna polja.
Kada ICMP poruka nije tipa Echo Request ili sadrži neispravne vrijednosti, paket se odbacuje na ICMP nivou. FSM prelazi u stanje IGNORE, u kojem se ostatak paketa odbacuje, bez aktiviranja izlaznih signala i bez generisanja ICMP Echo Reply poruke. Po prijemu signala in_eop, FSM se vraća u stanje IDLE.

<div align="center">
<img src="WaveDrom/sc2_3wavedrom.png" alt="ICMP format okvira" width="1000">
<p><strong>Slika 7:</strong> Prikaz scenarija 2 u WaveDromu za slučaj neispravnog ICMP zaglavlja.</p>
</div>

# Dijagram konačnog automata

Konačni automat (engl. Finite State Machine – FSM) predstavlja tehniku modeliranja sekvencijalnih logičkih sklopova koja se često koristi u dizajnu digitalnih komunikacionih sistema i mrežnih procesora. FSM omogućava precizno definisanje ponašanja sistema kroz skup jasno definisanih stanja, prelaza između stanja na osnovu ulaznih signala, kao i generisanje odgovarajućih izlaznih signala. U ovom projektu, konačni automat se koristi za implementaciju ICMPv4 Echo Responder modula, čiji je zadatak prijem, analiza i obrada mrežnih paketa, te generisanje ICMP Echo Reply poruka kao odgovor na primljene ICMP Echo Request pakete.

Dijagram stanja predstavlja grafičku specifikaciju konačnog automata i omogućava intuitivno razumijevanje toka obrade paketa. FSM parsira ulazni tok podataka bajt po bajt putem Avalon-ST interfejsa i identifikuje početak paketa, pri čemu vrši validaciju zaglavlja Ethernet, IP i ICMP slojeva. Nakon obrade ICMP payload-a, automat kontroliše slanje odgovora uz podršku ready/valid mehanizma.

Konačni automat ICMPv4 Echo Responder modula sastoji se od ukupno sedam stanja:

1. IDLE – Početno stanje u kojem modul ne obrađuje nikakav paket i spreman je za prijem novog ulaznog toka podataka. Signal reset vraća automat u stanje IDLE, dok je izlazni interfejs neaktivan. Uslov za prelazak u ETHERNET_HEADER stanje je in_valid = '1' i in_sop = '1'. FSM ostaje u ovom stanju dok je in_valid = '0'.
  
3. ETHERNET_HEADER – Obrada zaglavlja paketa u kojem se vrši parsiranje i validacija zaglavlja mrežnog paketa. Tokom ovog stanja, automat provjerava:
- da li je Ethernet tip jednak vrijednosti 0x0800, čime se potvrđuje IPv4 protokol,
- da li odredišna MAC adresa odgovara lokalnoj MAC adresi modul.

Ukoliko bilo koji od navedenih uslova nije ispunjen, automat zaključuje da paket nije relevantan za ICMP Echo Responder i prelazi u stanje IGNORE. Ako su svi uslovi ispunjeni, automat prelazi u stanje IP_HEADER. 

3. IP_HEADER - Obrada IPv4 zaglavlje paketa. Provjerava se da li je odredišna IP adresa jednaka lokalnoj IP adresi modula i da li polje Protocol ima vrijednost 1. Na taj način se potvrđuje da se radi o ICMP paketu. Ako su uslovi ispunjeni, FSM prelazi u stanje ICMP_HEADER. U suprotnom, paket se odbacuje prelaskom u stanje IGNORE.

4. ICMP_HEADER - Prijem ICMP zaglavlja paketa nakon što je IP header pročitan. FSM odlučuje da li je paket ICMP Echo Request ili ne. Ako ICMP_type = 8 (Echo Request), FSM prelazi u PAYLOAD. Ako ICMP_type ≠ 8, onda FSM prelazi u IGNORE.
  
5. PAYLOAD - FSM u ovom stanju aktivno prima bajt po bajt, svaki označen sa signalom in_valid. Svi primljeni bajtovi se pohranjuju u interni buffer (payload_mem), a svaki novi bajt povećava internu adresu (payload_index), kako bi se sačuvao pravilan redoslijed podataka.
FSM ostaje u ovom stanju sve dok ne stigne signal in_eop, koji označava kraj paketa. Po primanju poslednjeg bajta payload-a, FSM prelazi u stanje SEND, spreman za generisanje i slanje Echo Reply paketa.

Također, modul je u ovom stanju stalno spreman za prijem (in_ready = '1'), ali ne generiše nikakve izlazne podatke (out_valid = '0').

6. SEND - U stanju SEND, modul generiše i šalje Echo Reply paket kao odgovor na prethodno primljeni Echo Request. Paket se šalje bajt po bajt koristeći interni buffer, koji sadrži kompletan paket, uključujući Ethernet, IP zaglavlja, ICMP zaglavlje i payload, uz aktivan signal out_valid. Slanje se vrši samo kada je out_ready = '1', čime se poštuje Avalon-ST ready/valid mehanizam. Prvi bajt odgovora označen je signalom out_sop = '1', dok je poslednji bajt označen signalom out_eop = '1'. FSM ostaje u ovom stanju dok svi bajtovi nisu uspješno poslani. Nakon slanja posljednjeg bajta, FSM se vraća u stanje IDLE.
FSM ostaje u SEND dok nisu poslani svi bajtovi ili dok interfejs nije spreman, čime se osigurava da nema gubljenja podataka. Nakon što je poslednji bajt uspješno poslan i interfejs spreman (out_ready = '1' i brojac = posljednji_bit), FSM prelazi u stanje IDLE i spreman je za prijem sljedećeg paketa.
   
8. IGNORE – Ignorisanje paketa koje nisu tip ICMP Echo Request poruke. Na ovaj način se obezbjeđuje da nevalidni paketi ne utiču na rad modula. 


<div align="center">
<img src="FSM-draw_io/fsm_novo.png" alt="ICMP format okvira" width="800">
<p><strong>Slika 8:</strong> Prikaz FSM dijagrama pomoću alata draw.io.</p>
</div>

# Modeliranje u VHDL-u

ICMPv4 Echo Responder je realizovan korištenjem jezika za opis hardvera VHDL i zasniva se na konačnom automatu stanja (FSM). Komunikacija sa okruženjem ostvarena je putem Avalon Streaming (Avalon-ST) sučelja, uz korištenje standardnog ready/valid mehanizma za kontrolu protoka podataka.

Modul prima Ethernet okvire bajt-po-bajt, pri čemu se svaki bajt skladišti u interni bafer. Obrada paketa organizovana je kroz FSM stanja koja obuhvataju prijem i provjeru Ethernet, IPv4 i ICMP zaglavlja, kao i prijem korisničkog sadržaja. Validnost paketa se utvrđuje provjerom destinacijske MAC adrese, EtherType polja, IP protokola, destinacijske IP adrese i ICMP tipa poruke.

U slučaju prijema validnog ICMP Echo Request paketa, modul generiše ICMP Echo Reply zamjenom izvorišnih i odredišnih MAC i IP adresa te izmjenom ICMP tipa poruke. Odgovor se šalje sekvencijalno, bajt po bajt, uz poštivanje out_ready signala i pravilno označavanje početka i kraja okvira. Paketi koji ne ispunjavaju uslove validnosti se ignorišu, bez generisanja izlaznog odgovora. 

<div align="center">
<img src="VHDL/results/compilation_report.png" alt="ICMP format okvira" width="900">
<p><strong>Slika 9:</strong> Prikaz kompilacije dizajna (engl. compilation report).</p>
</div>

Preglednik stanja (engl. *State Machine Viewer*) omogućava grafički prikaz stanja konačnog automata implementiranog u okviru ICMPv4 Echo Responder modula, definisanog na osnovu VHDL koda i analiziranog korištenjem alata Intel Quartus Prime. Ovaj alat pruža uvid u stvarnu strukturu FSM-a nakon sinteze, uključujući stanja i prelaze koji upravljaju prijemom, obradom i generisanjem ICMP paketa. Na osnovu prikaza dobijenog u State Machine Viewer-u, koji je prikazan na slici 9, izvršena je verifikacija korektnosti dijagrama konačnih stanja prethodno kreiranog korištenjem alata draw.io. Ovim je potvrđena usklađenost implementiranog FSM-a sa projektovanim ponašanjem ICMPv4 Echo Responder modula.

<div align="center">
<img src="VHDL/results/ver_dijagram1.png" alt="ICMP format okvira" width="900">
<p><strong>Slika 10:</strong> Prikaz verifikacije dijagrama konačnih stanja.</p>
</div>

# Verifikacija rezultata pomoću simulacijskog alata ModelSim
## Prvi scenario verifikacije 

U prvom verifikacionom scenariju testiran je slučaj kada pristigli okvir sadrži ispravnu odredišnu MAC i IP adresu definisanu u generičkim parametrima modula. Cilj je bio potvrditi da modul icmp_echo_responder pravilno parsira ulaz i generiše ICMP Echo Reply odgovor. Simulacija pokazuje korektnu zamjenu izvornih i odredišnih adresa, prelazak stanja iz idle u reply i povratak u idle po završetku prenosa.

<div align="center">
<img src="VHDL/results/rep1.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/rep2.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/rep3.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/rep4.png" alt="ICMP format okvira" width="900">
<p><strong>Slika 11:</strong> Prikaz verifikacije rezultata pomoću ModelSim-a za prvi scenario.</p>
</div>

## Prvi scenario verifikacije - testiranje ready/valid handshake mehanizma

<div align="center">
<img src="VHDL/results/h_rep1.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/h_rep2.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/h_rep3.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/h_rep4.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/h_rep5.png" alt="ICMP format okvira" width="900">
<p><strong>Slika 12:</strong> Prikaz verifikacije rezultata pomoću ModelSim-a za ready/valid handshake scenario.</p>
</div>



## Drugi scenario verifikacije – pogrešna MAC adresa

U drugom scenariju izvršena je verifikacija rada sklopa u situaciji kada pristigli Ethernet okvir sadrži MAC adresu koja se ne podudara sa adresom definisanom u generičkom parametru modula. Putem ModelSim testbench-a generisana je kompletna sekvenca paketa koja obuhvata Ethernet, IPv4 i ICMP zaglavlje. U simulaciji je namjerno postavljena neispravna odredišna MAC adresa.

Cilj ovog scenarija bio je potvrditi da modul icmp_echo_responder pravilno ignoriše pakete koji mu nisu namijenjeni. Rezultati simulacije pokazuju da u slučaju pogrešne MAC adrese signal in_ready ostaje aktivan, ali se ne generiše ICMP Echo Reply odgovor niti dolazi do prelaska automata u stanje slanja izlaznih podataka. U ovoj situaciji ignoriše se paket i ostaje u IDLE stanju, čime je potvrđena ispravna funkcionalnost modula.

<div align="center">
<img src="VHDL/results/mac1.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/mac2.png" alt="ICMP format okvira" width="900">
<p><strong>Slika 13:</strong> Prikaz verifikacije rezultata pomoću ModelSim-a za drugi scenario pogrešne MAC adrese.</p>
</div>

## Drugi scenario verifikacije – pogrešna MAC adresa (ready/valid handshake)

<div align="center">
<img src="VHDL/results/h_mac1.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/h_mac2.png" alt="ICMP format okvira" width="900">
<p><strong>Slika 14:</strong> Prikaz verifikacije rezultata pomoću ModelSim-a za drugi scenario pogrešne MAC adrese i ready/valid handshake mehanizma.</p>
</div>

## Drugi scenario verifikacije – pogrešna IP adresa
U ovom dijelu je izvršena verifikacija rada sklopa za slučaj kada pristigli okvir sadrži pogrešnu odredišnu IP adresu. 
Rezultati ModelSim simulacije pokazuju da icmp_echo_responder u toj situaciji ignoriše paket, ne generiše Echo Reply odgovor i ostaje u IDLE stanju, čime je potvrđena ispravna funkcionalnost modula.

<div align="center">
<img src="VHDL/results/ip1.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/ip2.png" alt="ICMP format okvira" width="900">
<p><strong>Slika 15:</strong> Prikaz verifikacije rezultata pomoću ModelSim-a za drugi scenario pogrešne IP adrese.</p>
</div>

## Drugi scenario verifikacije – pogrešna IP adresa (ready/valid handshake)

<div align="center">
<img src="VHDL/results/h_ip1.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/h_ip2.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/h_ip3.png" alt="ICMP format okvira" width="900">
<p><strong>Slika 16:</strong> Prikaz verifikacije rezultata pomoću ModelSim-a za drugi scenario pogrešne IP adrese i ready/valid handshake mehanizma.</p>
</div>

## Drugi scenario verifikacije – neispravno ICMP zaglavlje
U ovom scenariju ModelSim verifikacije generisan je okvir sa ispravnim Ethernet i IPv4 zaglavljem, ali sa pogrešnim ICMP zaglavljem. Modul icmp_echo_responder takav paket ignoriše, te ne generiše Echo Reply odgovor i ostaje u IDLE stanju.

<div align="center">
<img src="VHDL/results/icmp1.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/icmp2.png" alt="ICMP format okvira" width="900">
<p><strong>Slika 17:</strong> Prikaz verifikacije rezultata pomoću ModelSim-a za drugi scenario neispravnog ICMP zaglavlja.</p>
</div>

## Drugi scenario verifikacije – neispravno ICMP zaglavlje (ready/valid handshake)

<div align="center">
<img src="VHDL/results/h_icmp1.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/h_icmp2.png" alt="ICMP format okvira" width="900">
</div>

<div align="center">
<img src="VHDL/results/h_icmp3.png" alt="ICMP format okvira" width="900">
<p><strong>Slika 18:</strong> Prikaz verifikacije rezultata pomoću ModelSim-a za drugi scenario neispravnog ICMP zaglavlja i ready/valid handshake mehanizma.</p>
</div>

# Zaključak

## Literatura
[1] "Detection of Covert Channels over ICMP Protocol", Dostupno na: https://hal.science/hal-02381398/file/AICCSA%202017%20sirine%20sayadi.pdf

[2] "The Design and Implementation of an IPv6/IPv4 Network Address and Protocol Translator", Dostupno na: https://www.usenix.org/legacy/publications/library/proceedings/usenix98/full_papers/fiuczynski/fiuczynski.pdf

[3] Volnei A. Pedroni, Circuit Design and Simulation with VHDL (poglavlje 11), The MIT Press, Cambridge, Massachussets, 2nd edition, 2010

[4] Intel, F. P. G. A., Avalon® interface specifications., Tech. Rep., MNL-AVABUSREF, 2021.

