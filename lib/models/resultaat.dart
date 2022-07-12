import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kvk_service/models/basisprofielen/kvk_link.dart';
import 'package:kvk_service/models/resultaat_item.dart';

class Resultaat {
  final int pagina;
  final int aantal;
  final int totaal;
  final String vorige;
  final String volgende;
  final List<ResultaatItem>? resultaten;
  final List<KvKLink>? links;
  Resultaat({
    required this.pagina,
    required this.aantal,
    required this.totaal,
    required this.vorige,
    required this.volgende,
    required this.resultaten,
    required this.links,
  });

  Resultaat copyWith({
    int? pagina,
    int? aantal,
    int? totaal,
    String? vorige,
    String? volgende,
    List<ResultaatItem>? resultaten,
    List<KvKLink>? links,
  }) {
    return Resultaat(
      pagina: pagina ?? this.pagina,
      aantal: aantal ?? this.aantal,
      totaal: totaal ?? this.totaal,
      vorige: vorige ?? this.vorige,
      volgende: volgende ?? this.volgende,
      resultaten: resultaten ?? this.resultaten,
      links: links ?? this.links,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'pagina': pagina});
    result.addAll({'aantal': aantal});
    result.addAll({'totaal': totaal});
    result.addAll({'vorige': vorige});
    result.addAll({'volgende': volgende});
    if (resultaten != null) {
      result.addAll({'resultaten': resultaten!.map((x) => x.toMap()).toList()});
    }
    if (links != null) {
      result.addAll({'links': links!.map((x) => x.toMap()).toList()});
    }

    return result;
  }

  factory Resultaat.fromMap(Map<String, dynamic> map) {
    return Resultaat(
      pagina: map['pagina']?.toInt() ?? 0,
      aantal: map['aantal']?.toInt() ?? 0,
      totaal: map['totaal']?.toInt() ?? 0,
      vorige: map['vorige'] ?? '',
      volgende: map['volgende'] ?? '',
      resultaten: map['resultaten'] != null
          ? List<ResultaatItem>.from(
              map['resultaten']?.map((x) => ResultaatItem.fromMap(x)))
          : null,
      links: map['links'] != null
          ? List<KvKLink>.from(map['links']?.map((x) => KvKLink.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Resultaat.fromJson(String source) =>
      Resultaat.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Resultaat(pagina: $pagina, aantal: $aantal, totaal: $totaal, vorige: $vorige, volgende: $volgende, resultaten: $resultaten, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Resultaat &&
        other.pagina == pagina &&
        other.aantal == aantal &&
        other.totaal == totaal &&
        other.vorige == vorige &&
        other.volgende == volgende &&
        listEquals(other.resultaten, resultaten) &&
        listEquals(other.links, links);
  }

  @override
  int get hashCode {
    return pagina.hashCode ^
        aantal.hashCode ^
        totaal.hashCode ^
        vorige.hashCode ^
        volgende.hashCode ^
        resultaten.hashCode ^
        links.hashCode;
  }
}
