import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kvk_service/models/basisprofielen/kvk_link.dart';
import 'package:kvk_service/models/basisprofielen/vestiging_basis.dart';

class VestigingList {
  final String kvkNummer;
  final int aantalCommercieleVestigingen;
  final int aantalNietCommercieleVestigingen;
  final int totaalAantalVestigingen;
  List<VestigingBasis>? vestigingen;
  List<KvKLink>? links;
  VestigingList({
    required this.kvkNummer,
    required this.aantalCommercieleVestigingen,
    required this.aantalNietCommercieleVestigingen,
    required this.totaalAantalVestigingen,
    required this.vestigingen,
    required this.links,
  });

  VestigingList copyWith({
    String? kvkNummer,
    int? aantalCommercieleVestigingen,
    int? aantalNietCommercieleVestigingen,
    int? totaalAantalVestigingen,
    List<VestigingBasis>? vestigingen,
    List<KvKLink>? links,
  }) {
    return VestigingList(
      kvkNummer: kvkNummer ?? this.kvkNummer,
      aantalCommercieleVestigingen:
          aantalCommercieleVestigingen ?? this.aantalCommercieleVestigingen,
      aantalNietCommercieleVestigingen: aantalNietCommercieleVestigingen ??
          this.aantalNietCommercieleVestigingen,
      totaalAantalVestigingen:
          totaalAantalVestigingen ?? this.totaalAantalVestigingen,
      vestigingen: vestigingen ?? this.vestigingen,
      links: links ?? this.links,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'kvkNummer': kvkNummer});
    result
        .addAll({'aantalCommercieleVestigingen': aantalCommercieleVestigingen});
    result.addAll(
        {'aantalNietCommercieleVestigingen': aantalNietCommercieleVestigingen});
    result.addAll({'totaalAantalVestigingen': totaalAantalVestigingen});
    if (vestigingen != null) {
      result
          .addAll({'vestigingen': vestigingen!.map((x) => x.toMap()).toList()});
    }
    if (links != null) {
      result.addAll({'links': links!.map((x) => x.toMap()).toList()});
    }

    return result;
  }

  factory VestigingList.fromMap(Map<String, dynamic> map) {
    return VestigingList(
      kvkNummer: map['kvkNummer'] ?? '',
      aantalCommercieleVestigingen:
          map['aantalCommercieleVestigingen']?.toInt() ?? 0,
      aantalNietCommercieleVestigingen:
          map['aantalNietCommercieleVestigingen']?.toInt() ?? 0,
      totaalAantalVestigingen: map['totaalAantalVestigingen']?.toInt() ?? 0,
      vestigingen: map['vestigingen'] != null
          ? List<VestigingBasis>.from(
              map['vestigingen']?.map((x) => VestigingBasis.fromMap(x)))
          : null,
      links: map['links'] != null
          ? List<KvKLink>.from(map['links']?.map((x) => KvKLink.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory VestigingList.fromJson(String source) =>
      VestigingList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'VestigingList(kvkNummer: $kvkNummer, aantalCommercieleVestigingen: $aantalCommercieleVestigingen, aantalNietCommercieleVestigingen: $aantalNietCommercieleVestigingen, totaalAantalVestigingen: $totaalAantalVestigingen, vestigingen: $vestigingen, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VestigingList &&
        other.kvkNummer == kvkNummer &&
        other.aantalCommercieleVestigingen == aantalCommercieleVestigingen &&
        other.aantalNietCommercieleVestigingen ==
            aantalNietCommercieleVestigingen &&
        other.totaalAantalVestigingen == totaalAantalVestigingen &&
        listEquals(other.vestigingen, vestigingen) &&
        listEquals(other.links, links);
  }

  @override
  int get hashCode {
    return kvkNummer.hashCode ^
        aantalCommercieleVestigingen.hashCode ^
        aantalNietCommercieleVestigingen.hashCode ^
        totaalAantalVestigingen.hashCode ^
        vestigingen.hashCode ^
        links.hashCode;
  }
}
