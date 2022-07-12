library kvk_service;

import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:kvk_service/enums/basisprofiel_info.dart';
import 'package:kvk_service/models/basisprofielen/basisprofiel.dart';
import 'package:kvk_service/models/basisprofielen/eigenaar.dart';
import 'package:kvk_service/models/basisprofielen/geodata.dart';
import 'package:kvk_service/models/basisprofielen/vestiging.dart';
import 'package:kvk_service/models/resultaat_item.dart';
import 'package:kvk_service/models/zoek_item.dart';

class KvKService {
  final String baseUrl;

  KvKService({
    required this.baseUrl,
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
  Future<List<ResultaatItem>> zoeken(ZoekItem query) async {
    final String urlExtension = query.getUrlExtension();

    final http.Response result =
        await http.get(Uri.parse(baseUrl + urlExtension));

    final Map<String, dynamic> jsonResponse = jsonDecode(result.body);

    List<ResultaatItem> resultaatItems =
        _generateResultaatItems(jsonResponse['resultaten']);

    return resultaatItems;
  }

  Future<BasisProfiel> basisProfielen(
    String kvkNummer, {
    bool geoData = false,
    BasisProfielInfo? basisProfielInfo,
  }) async {
    final String urlExtension =
        'basisprofielen/$kvkNummer${(basisProfielInfo) != null ? basisProfielInfo.toString() : ''}?geoData=$geoData';

    final http.Response result =
        await http.get(Uri.parse(baseUrl + urlExtension));

    final Map<String, dynamic> jsonResponse = jsonDecode(result.body);

    if (basisProfielInfo == BasisProfielInfo.eigenaar) {
      Eigenaar.fromMap(jsonResponse);
    } else if (basisProfielInfo == BasisProfielInfo.hoofdvestiging) {
      Vestiging.fromMap(jsonResponse);
    } else if (basisProfielInfo == BasisProfielInfo.vestigingen) {
      // TODO: Create class for vestigingen
    }
    BasisProfiel basisProfiel = BasisProfiel.fromMap(jsonResponse);

    return basisProfiel;
  }
}
