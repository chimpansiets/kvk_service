import 'package:flutter_test/flutter_test.dart';
import 'package:kvk_service/enums/basisprofiel_info.dart';

import 'package:kvk_service/kvk_service.dart';
import 'package:kvk_service/models/basisprofielen/basisprofiel.dart';
import 'package:kvk_service/models/resultaat_item.dart';
import 'package:kvk_service/models/zoek_item.dart';

void main() async {
  final service = KvKService(baseUrl: 'https://developers.kvk.nl/test/api/v1/');

  test(
    'Zoekt naar bedrijven in KvK handelsregister',
    () async {
      List<ResultaatItem> resultaatItems = await service.zoeken(
        ZoekItem(
          kvkNummer: "90002490",
        ),
      );

      expect(resultaatItems.runtimeType, List<ResultaatItem>);
    },
  );

  test(
    'Voor een specifiek bedrijf basisinformatie opvragen',
    () async {
      BasisProfiel profiel = await service.basisProfielen('90002490');

      print(profiel);

      expect(profiel.runtimeType, BasisProfiel);
    },
  );

  test(
    'Voor een specifiek bedrijf eigenaar informatie opvragen',
    () async {
      BasisProfiel profiel = await service.basisProfielen('90002490',
          basisProfielInfo: BasisProfielInfo.eigenaar);

      print(profiel);

      expect(profiel.runtimeType, BasisProfiel);
    },
  );

  test(
    'Voor een specifiek bedrijf hoofdvestigingsinformatie opvragen',
    () async {
      BasisProfiel profiel = await service.basisProfielen('90002490',
          basisProfielInfo: BasisProfielInfo.hoofdvestiging);

      print(profiel);

      expect(profiel.runtimeType, BasisProfiel);
    },
  );

  test(
    'Voor een specifiek bedrijf een lijst met vestigingen opvragen',
    () async {
      BasisProfiel profiel = await service.basisProfielen('90002490',
          basisProfielInfo: BasisProfielInfo.vestigingen);

      print(profiel);

      expect(profiel.runtimeType, BasisProfiel);
    },
  );
}
