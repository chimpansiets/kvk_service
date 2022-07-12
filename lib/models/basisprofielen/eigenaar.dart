import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kvk_service/models/basisprofielen/adres.dart';
import 'package:kvk_service/models/basisprofielen/kvk_link.dart';

class Eigenaar {
  final String rsin;
  final String rechtsvorm;
  final String uitgebreideRechtsvorm;
  List<Adres>? adressen;
  List<String>? websites;
  List<KvKLink> links;
  Eigenaar({
    required this.rsin,
    required this.rechtsvorm,
    required this.uitgebreideRechtsvorm,
    required this.adressen,
    required this.websites,
    required this.links,
  });

  Eigenaar copyWith({
    String? rsin,
    String? rechtsvorm,
    String? uitgebreideRechtsvorm,
    List<Adres>? adressen,
    List<String>? websites,
    List<KvKLink>? links,
  }) {
    return Eigenaar(
      rsin: rsin ?? this.rsin,
      rechtsvorm: rechtsvorm ?? this.rechtsvorm,
      uitgebreideRechtsvorm:
          uitgebreideRechtsvorm ?? this.uitgebreideRechtsvorm,
      adressen: adressen ?? this.adressen,
      websites: websites ?? this.websites,
      links: links ?? this.links,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'rsin': rsin});
    result.addAll({'rechtsvorm': rechtsvorm});
    result.addAll({'uitgebreideRechtsvorm': uitgebreideRechtsvorm});
    if (adressen != null) {
      result.addAll({'adressen': adressen!.map((x) => x.toMap()).toList()});
    }
    if (websites != null) {
      result.addAll({'websites': websites});
    }
    result.addAll({'links': links.map((x) => x.toMap()).toList()});

    return result;
  }

  factory Eigenaar.fromMap(Map<String, dynamic> map) {
    return Eigenaar(
      rsin: map['rsin'] ?? '',
      rechtsvorm: map['rechtsvorm'] ?? '',
      uitgebreideRechtsvorm: map['uitgebreideRechtsvorm'] ?? '',
      adressen: map['adressen'] != null
          ? List<Adres>.from(map['adressen']?.map((x) => Adres.fromMap(x)))
          : null,
      websites:
          map['websites'] != null ? List<String>.from(map['websites']) : null,
      links: List<KvKLink>.from(map['links']?.map((x) => KvKLink.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Eigenaar.fromJson(String source) =>
      Eigenaar.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Eigenaar(rsin: $rsin, rechtsvorm: $rechtsvorm, uitgebreideRechtsvorm: $uitgebreideRechtsvorm, adressen: $adressen, websites: $websites, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Eigenaar &&
        other.rsin == rsin &&
        other.rechtsvorm == rechtsvorm &&
        other.uitgebreideRechtsvorm == uitgebreideRechtsvorm &&
        listEquals(other.adressen, adressen) &&
        listEquals(other.websites, websites) &&
        listEquals(other.links, links);
  }

  @override
  int get hashCode {
    return rsin.hashCode ^
        rechtsvorm.hashCode ^
        uitgebreideRechtsvorm.hashCode ^
        adressen.hashCode ^
        websites.hashCode ^
        links.hashCode;
  }
}
