import 'package:flutter_test/flutter_test.dart';
import 'package:kvk_service/enums/basisprofiel_info.dart';

import 'package:kvk_service/kvk_service.dart';
import 'package:kvk_service/models/basisprofielen/basisprofiel.dart';
import 'package:kvk_service/models/basisprofielen/eigenaar.dart';
import 'package:kvk_service/models/basisprofielen/vestiging.dart';
import 'package:kvk_service/models/basisprofielen/vestiging_list.dart';
import 'package:kvk_service/models/resultaat.dart';
import 'package:kvk_service/models/resultaat_item.dart';
import 'package:kvk_service/models/zoek_item.dart';

// TODO: Implementeer tests voor iedere soort testdata
void main() async {
  final service = KvKService(baseUrl: 'https://developers.kvk.nl/test/api/v1/');

  group('zoeken() tests:', () {
    test(
      'Zoekt naar bedrijven in KvK handelsregister zonder parameters',
      () async {
        Resultaat resultaatItems = await service.zoeken(ZoekItem());

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar eenmanszaak in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '69599084'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar foutmelding in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '90004973'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );
  });

  group('BasisProfielen() tests:', () {
    group('Onderlinge Waarborg Maatschappij:', () {
      test(
        'Voor een specifiek bedrijf basisinformatie opvragen (OWM)',
        () async {
          BasisProfiel profiel = await service.basisProfielen('90002490');

          expect(profiel.runtimeType, BasisProfiel);
        },
      );

      test(
        'Voor een specifiek bedrijf eigenaar informatie opvragen (OWM)',
        () async {
          Eigenaar eigenaar = await service.basisProfielen('90002490',
              basisProfielInfo: BasisProfielInfo.eigenaar);

          expect(eigenaar.runtimeType, Eigenaar);
        },
      );

      test(
        'Voor een specifiek bedrijf hoofdvestigingsinformatie opvragen (OWM)',
        () async {
          Vestiging vestiging = await service.basisProfielen('90002490',
              basisProfielInfo: BasisProfielInfo.hoofdvestiging);

          expect(vestiging.runtimeType, Vestiging);
        },
      );

      test(
        'Voor een specifiek bedrijf een lijst met vestigingen opvragen (OWM)',
        () async {
          VestigingList vestigingList = await service.basisProfielen('90002490',
              basisProfielInfo: BasisProfielInfo.vestigingen);

          expect(vestigingList.runtimeType, VestigingList);
        },
      );
    });
  });

  group('vestigingsProfielen() tests:', () {
    group('Onderlinge Waarborg Maatschappij:', () {
      test(
        'Voor een specifiek bedrijf een lijst met vestigingen opvragen (OWM)',
        () async {
          Vestiging vestiging =
              await service.vestigingsProfielen('990000246858');

          expect(vestiging.runtimeType, Vestiging);
        },
      );
    });
  });
}
