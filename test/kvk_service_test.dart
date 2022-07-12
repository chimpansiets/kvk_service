import 'package:flutter_test/flutter_test.dart';

import 'package:kvk_service/kvk_service.dart';
import 'package:kvk_service/models/resultaat_item.dart';
import 'package:kvk_service/models/zoek_item.dart';

void main() async {
  // final service = KvKService();

  // await service.search(ZoekItem());
  test(
    'Searches for companies is KvK handelsregister',
    () async {
      final service = KvKService();

      List<ResultaatItem> resultaatItems = await service.search(
        ZoekItem(
          kvkNummer: "90002490",
        ),
      );

      print(resultaatItems);
    },
  );
}
