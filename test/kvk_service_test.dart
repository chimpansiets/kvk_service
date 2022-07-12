import 'package:flutter_test/flutter_test.dart';

import 'package:kvk_service/kvk_service.dart';
import 'package:kvk_service/models/resultaat_item.dart';
import 'package:kvk_service/models/zoek_item.dart';

void main() async {
  final service = KvKService();
  test(
    'Zoekt naar bedrijven in KvK handelsregister',
    () async {
      List<ResultaatItem> resultaatItems = await service.search(
        ZoekItem(
          kvkNummer: "90002490",
        ),
      );

      expect(resultaatItems, List<ResultaatItem>);
    },
  );

  test(
    'Voor een specifiek bedrijf basisinformatie opvragen',
    () async {},
  );
}
