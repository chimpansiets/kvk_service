import 'package:flutter_test/flutter_test.dart';
import 'package:kvk_service/enums/basisprofiel_info.dart';

import 'package:kvk_service/kvk_service.dart';
import 'package:kvk_service/models/basisprofielen/basisprofiel.dart';
import 'package:kvk_service/models/basisprofielen/eigenaar.dart';
import 'package:kvk_service/models/basisprofielen/vestiging.dart';
import 'package:kvk_service/models/basisprofielen/vestiging_list.dart';
import 'package:kvk_service/models/resultaat.dart';
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

    test(
      'Zoekt naar NV in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '68727720'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar NV in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '90004760'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar BV in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '68750110'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar BV in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '90001354'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar Stichting in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '69599068'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar Stichting in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '90000102'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar VoF in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '69599076'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar VoF in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '90005414'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar Cooperatie in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '55344526'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar Kerkgenootschap in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '90002520'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar Onderlinge Waarborg Maatschappij in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '90002490'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar Foutmelding in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '90002903'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar Vereniging van Eigenaren in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '90000749'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar Maatschap in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '90001745'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar Commanditaire Vennotschap in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '90003942'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );

    test(
      'Zoekt naar Overige Privaatrechtelijke Rechtspersoon in KvK handelsregister',
      () async {
        Resultaat resultaatItems = await service.zoeken(
          ZoekItem(kvkNummer: '55505201'),
        );

        expect(resultaatItems.runtimeType, Resultaat);
      },
    );
  });

  group('BasisProfielen() tests:', () {
    group('Eenmanszaak:', () {
      test(
        'basisinformatie',
        () async {
          BasisProfiel profiel = await service.basisProfiel('69599084');

          expect(profiel.runtimeType, BasisProfiel);
        },
      );

      test(
        'eigenaar informatie',
        () async {
          Eigenaar eigenaar = await service.basisProfiel('69599084',
              basisProfielInfo: BasisProfielInfo.eigenaar);

          expect(eigenaar.runtimeType, Eigenaar);
        },
      );

      test(
        'hoofdvestigingsinformatie',
        () async {
          Vestiging vestiging = await service.basisProfiel('69599084',
              basisProfielInfo: BasisProfielInfo.hoofdvestiging);

          expect(vestiging.runtimeType, Vestiging);
        },
      );

      test(
        'lijst met vestigingen',
        () async {
          VestigingList vestigingList = await service.basisProfiel('69599084',
              basisProfielInfo: BasisProfielInfo.vestigingen);

          expect(vestigingList.runtimeType, VestigingList);
        },
      );
    });

    group('Foutmelding:', () {
      test(
        'basisinformatie',
        () async {
          BasisProfiel profiel = await service.basisProfiel('90004973');

          expect(profiel.runtimeType, BasisProfiel);
        },
      );

      test(
        'eigenaar informatie',
        () async {
          Eigenaar eigenaar = await service.basisProfiel('90004973',
              basisProfielInfo: BasisProfielInfo.eigenaar);

          expect(eigenaar.runtimeType, Eigenaar);
        },
      );

      test(
        'hoofdvestigingsinformatie',
        () async {
          Vestiging vestiging = await service.basisProfiel('90004973',
              basisProfielInfo: BasisProfielInfo.hoofdvestiging);

          expect(vestiging.runtimeType, Vestiging);
        },
      );

      test(
        'lijst met vestigingen',
        () async {
          VestigingList vestigingList = await service.basisProfiel('90004973',
              basisProfielInfo: BasisProfielInfo.vestigingen);

          expect(vestigingList.runtimeType, VestigingList);
        },
      );
    });
    group('Onderlinge Waarborg Maatschappij:', () {
      test(
        'basisinformatie',
        () async {
          BasisProfiel profiel = await service.basisProfiel('90002490');

          expect(profiel.runtimeType, BasisProfiel);
        },
      );

      test(
        'eigenaar informatie',
        () async {
          Eigenaar eigenaar = await service.basisProfiel('90002490',
              basisProfielInfo: BasisProfielInfo.eigenaar);

          expect(eigenaar.runtimeType, Eigenaar);
        },
      );

      test(
        'hoofdvestigingsinformatie',
        () async {
          Vestiging vestiging = await service.basisProfiel('90002490',
              basisProfielInfo: BasisProfielInfo.hoofdvestiging);

          expect(vestiging.runtimeType, Vestiging);
        },
      );

      test(
        'lijst met vestigingen',
        () async {
          VestigingList vestigingList = await service.basisProfiel('90002490',
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
          Vestiging vestiging = await service.vestigingsProfiel('990000246858');

          expect(vestiging.runtimeType, Vestiging);
        },
      );
    });
  });
}
