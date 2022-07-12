library kvk_service;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kvk_service/enums/basisprofiel_info.dart';
import 'package:kvk_service/models/basisprofielen/basisprofiel.dart';
import 'package:kvk_service/models/basisprofielen/eigenaar.dart';
import 'package:kvk_service/models/basisprofielen/vestiging.dart';
import 'package:kvk_service/models/basisprofielen/vestiging_list.dart';
import 'package:kvk_service/models/resultaat.dart';
import 'package:kvk_service/models/zoek_item.dart';

class KvKService {
  final String baseUrl;

  KvKService({
    required this.baseUrl,
  });

  Future<Resultaat> zoeken(ZoekItem zoekItem) async {
    final String urlExtension = zoekItem.getUrlExtension();

    final http.Response result =
        await http.get(Uri.parse(baseUrl + urlExtension));

    final Map<String, dynamic> jsonResponse = jsonDecode(result.body);

    Resultaat resultaat = Resultaat.fromMap(jsonResponse);

    return resultaat;
  }

  Future<dynamic> basisProfielen(
    String kvkNummer, {
    bool geoData = false,
    BasisProfielInfo? basisProfielInfo,
  }) async {
    final String urlExtension =
        'basisprofielen/$kvkNummer${(basisProfielInfo) != null ? '/${basisProfielInfo.toString().substring(17)}' : ''}?geoData=$geoData';

    final http.Response result =
        await http.get(Uri.parse(baseUrl + urlExtension));

    final Map<String, dynamic> jsonResponse = jsonDecode(result.body);

    if (basisProfielInfo == BasisProfielInfo.eigenaar) {
      return Eigenaar.fromMap(jsonResponse);
    } else if (basisProfielInfo == BasisProfielInfo.hoofdvestiging) {
      return Vestiging.fromMap(jsonResponse);
    } else if (basisProfielInfo == BasisProfielInfo.vestigingen) {
      return VestigingList.fromMap(jsonResponse);
    } else {
      return BasisProfiel.fromMap(jsonResponse);
    }
  }

  Future<Vestiging> vestigingsProfielen(
    String vestigingsNummer, {
    bool geoData = false,
  }) async {
    final String urlExtension =
        'vestigingsprofielen/$vestigingsNummer?geoData=$geoData';

    final http.Response result =
        await http.get(Uri.parse(baseUrl + urlExtension));

    final Map<String, dynamic> jsonResponse = jsonDecode(result.body);

    return Vestiging.fromMap(jsonResponse);
  }
}
