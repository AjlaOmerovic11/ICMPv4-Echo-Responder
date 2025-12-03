# ICMPv4-Echo-Responder
VHDL implementacija ICMPv4 Echo Responder-a

## Uvod

Internet Control Message Protocol (ICMP) predstavlja jedan od ključnih protokola u okviru TCP/IP arhitekture. Funkcioniše na mrežnom sloju i prvenstveno se koristi za razmjenu kontrolnih poruka između mrežnih uređaja. ICMP paketi obično nastaju kao odgovor na određeni problem u komunikaciji ili kao rezultat mrežnih provjera drugih  protokola.

Kao što je prikazano na slici 1, ICMP zaglavlje sastoji se od nekoliko osnovnih polja: Type (tip), Code (kod) i Checksum (kontrolna suma). U dijelu podatka mogu biti definisana dodatna polja, poput identifikatora i sekvencijskog broja, koji se koriste u ICMP echo zahtjevima (tip 8) i echo odgovorima (tip 0).

<img src="Docs/image.png" alt="ICMP format okvira" width="500">

ICMPv4 koristi 8-bitni pointer u poruci Parameter Problem koji ukazuje na mjesto u IP zaglavlju gdje je otkriven problem. Kada se šalje ICMPv4 greška, paket uključuje onoliko originalnog IP zaglavlja i podataka koliko može stati.
Kada ICMPv4 generiše grešku:
-U zaglavlje se ubacuje dio originalnog IP paketa koji je izazvao grešku.
-Ukoliko se takav paket naknadno obrađuje (npr. prevođenje ili enkapsulacija), može se promijeniti ukupna dužina IP datagrama, pa je potrebno prilagoditi polje Total Length u IPv4 zaglavlju.


## Zaključak

## Literatura
[1] "Detection of Covert Channels over ICMP Protocol", Dostupno na: https://hal.science/hal-02381398/file/AICCSA%202017%20sirine%20sayadi.pdf
