<!-- 
Dit is een Dart package met een aantal handige utility functies voor het opvragen van Data van de KvK handelsregister API.
-->

Dit is een Dart package met een aantal handige utility functies voor het opvragen van Data van de KvK handelsregister API.

## Features

De KvKService heeft voor nu de volgende functies:
- `Future<List<ResultaatItem>> zoeken(ZoekItem zoekItem); // Zoekt voor bedrijven in KvK handelsregister`
- `Future<BasisProfiel> basisProfielen(String kvkNummer, {bool geoData = false, BasisProfielInfo? basisProfielInfo}); // Voor een specifiek bedrijf informatie opvragen`
- NOT YET IMPLEMENTED: `Future<VestigingsProfiel> vestigingsProfiel(String vestigingsNummer, {bool geoData = false}); // Voor een specifieke vestiging informatie opvragen`

## Getting started

wanneer deze package gereleased is:
`flutter pub add kvk_service`
en je bent ready-to-go!

## Usage

Deze package is opgebouwd vanuit de class KvKService. Deze service neemt 1 parameter, namelijk;
```dart
final service = KvKService(
  baseUrl: 'https://developers.kvk.nl/test/api/v1/'
);
```

Wanneer deze service is geinstantieerd met de juiste baseUrl kun je de bijbehorende functies van de Service aanroepen, deze configureren de url-extensie en queries helemaal zelf.

## Additional information

You can find me on
- LinkedIn: https://www.linkedin.com/in/sietse-voort-899041167/
- Github: https://github.com/chimpansiets
- CodeWars: https://www.codewars.com/users/chimpansiets
- CodinGame: https://www.codingame.com/profile/4b2bda70898b6aa01c17cd4dbc0b76902613673
- HackerRank: https://www.hackerrank.com/svoort1
