import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kvk_service/models/basisprofielen/kvk_link.dart';

class VestigingBasis {
  final String vestigingsNummer;
  final String kvkNummer;
  final String eersteHandelsnaam;
  final String indHoofdvestiging;
  final String indAdresAfgeschermd;
  final String indCommercieleVestiging;
  final String volledigAdres;
  List<KvKLink> links;
  VestigingBasis({
    required this.vestigingsNummer,
    required this.kvkNummer,
    required this.eersteHandelsnaam,
    required this.indHoofdvestiging,
    required this.indAdresAfgeschermd,
    required this.indCommercieleVestiging,
    required this.volledigAdres,
    required this.links,
  });

  VestigingBasis copyWith({
    String? vestigingsNummer,
    String? kvkNummer,
    String? eersteHandelsnaam,
    String? indHoofdvestiging,
    String? indAdresAfgeschermd,
    String? indCommercieleVestiging,
    String? volledigAdres,
    List<KvKLink>? links,
  }) {
    return VestigingBasis(
      vestigingsNummer: vestigingsNummer ?? this.vestigingsNummer,
      kvkNummer: kvkNummer ?? this.kvkNummer,
      eersteHandelsnaam: eersteHandelsnaam ?? this.eersteHandelsnaam,
      indHoofdvestiging: indHoofdvestiging ?? this.indHoofdvestiging,
      indAdresAfgeschermd: indAdresAfgeschermd ?? this.indAdresAfgeschermd,
      indCommercieleVestiging:
          indCommercieleVestiging ?? this.indCommercieleVestiging,
      volledigAdres: volledigAdres ?? this.volledigAdres,
      links: links ?? this.links,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'vestigingsNummer': vestigingsNummer});
    result.addAll({'kvkNummer': kvkNummer});
    result.addAll({'eersteHandelsnaam': eersteHandelsnaam});
    result.addAll({'indHoofdvestiging': indHoofdvestiging});
    result.addAll({'indAdresAfgeschermd': indAdresAfgeschermd});
    result.addAll({'indCommercieleVestiging': indCommercieleVestiging});
    result.addAll({'volledigAdres': volledigAdres});
    result.addAll({'links': links.map((x) => x.toMap()).toList()});

    return result;
  }

  factory VestigingBasis.fromMap(Map<String, dynamic> map) {
    return VestigingBasis(
      vestigingsNummer: map['vestigingsNummer'] ?? '',
      kvkNummer: map['kvkNummer'] ?? '',
      eersteHandelsnaam: map['eersteHandelsnaam'] ?? '',
      indHoofdvestiging: map['indHoofdvestiging'] ?? '',
      indAdresAfgeschermd: map['indAdresAfgeschermd'] ?? '',
      indCommercieleVestiging: map['indCommercieleVestiging'] ?? '',
      volledigAdres: map['volledigAdres'] ?? '',
      links: List<KvKLink>.from(map['links']?.map((x) => KvKLink.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory VestigingBasis.fromJson(String source) =>
      VestigingBasis.fromMap(json.decode(source));

  @override
  String toString() {
    return 'VestigingBasis(vestigingsNummer: $vestigingsNummer, kvkNummer: $kvkNummer, eersteHandelsnaam: $eersteHandelsnaam, indHoofdvestiging: $indHoofdvestiging, indAdresAfgeschermd: $indAdresAfgeschermd, indCommercieleVestiging: $indCommercieleVestiging, volledigAdres: $volledigAdres, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VestigingBasis &&
        other.vestigingsNummer == vestigingsNummer &&
        other.kvkNummer == kvkNummer &&
        other.eersteHandelsnaam == eersteHandelsnaam &&
        other.indHoofdvestiging == indHoofdvestiging &&
        other.indAdresAfgeschermd == indAdresAfgeschermd &&
        other.indCommercieleVestiging == indCommercieleVestiging &&
        other.volledigAdres == volledigAdres &&
        listEquals(other.links, links);
  }

  @override
  int get hashCode {
    return vestigingsNummer.hashCode ^
        kvkNummer.hashCode ^
        eersteHandelsnaam.hashCode ^
        indHoofdvestiging.hashCode ^
        indAdresAfgeschermd.hashCode ^
        indCommercieleVestiging.hashCode ^
        volledigAdres.hashCode ^
        links.hashCode;
  }
}
