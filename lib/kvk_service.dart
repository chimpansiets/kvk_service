library kvk_service;

import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:kvk_service/models/resultaat_item.dart';
import 'package:kvk_service/models/zoek_item.dart';

class KvKService {
  final String baseUrl;

  KvKService({
    this.baseUrl = kDebugMode
        ? 'https://developers.kvk.nl/test/api/v1/'
        : 'https://developers.kvk.nl/test/api/v1/',
  });

  List<ResultaatItem> _generateResultaatItems(List<dynamic> results) {
    List<ResultaatItem> resultaatItems = [];

    for (var result in results) {
      ResultaatItem item = ResultaatItem.fromMap(result);

      resultaatItems.add(item);
    }

    return resultaatItems;
  }

  @override
  Future<List<ResultaatItem>> search(ZoekItem query) async {
    final String urlExtension = query.getUrlExtension();

    final http.Response result =
        await http.get(Uri.parse(baseUrl + urlExtension));

    final Map<String, dynamic> jsonResponse = jsonDecode(result.body);

    List<ResultaatItem> resultaatItems =
        _generateResultaatItems(jsonResponse['resultaten']);

    return resultaatItems;
  }
}
