import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kvk_service/models/basisprofielen/embedded_container.dart';
import 'package:kvk_service/models/basisprofielen/handelsnaam.dart';
import 'package:kvk_service/models/basisprofielen/kvk_link.dart';
import 'package:kvk_service/models/basisprofielen/materiele_registratie.dart';
import 'package:kvk_service/models/basisprofielen/sbi_activiteit.dart';

class BasisProfiel {
  final String kvkNummer;
  final String indNonMailing;
  final String naam;
  final String formeleRegistratieDatum;
  final MaterieleRegistratie materieleRegistratie;
  final int totaalWerkzamePersonen;
  final String statutaireNaam;
  List<HandelsNaam> handelsnamen;
  List<SBIActiviteit> sbiActiviteiten;
  List<KvKLink> links;
  EmbeddedContainer embedded;
  BasisProfiel({
    required this.kvkNummer,
    required this.indNonMailing,
    required this.naam,
    required this.formeleRegistratieDatum,
    required this.materieleRegistratie,
    required this.totaalWerkzamePersonen,
    required this.statutaireNaam,
    required this.handelsnamen,
    required this.sbiActiviteiten,
    required this.links,
    required this.embedded,
  });

  BasisProfiel copyWith({
    String? kvkNummer,
    String? indNonMailing,
    String? naam,
    String? formeleRegistratieDatum,
    MaterieleRegistratie? materieleRegistratie,
    int? totaalWerkzamePersonen,
    String? statutaireNaam,
    List<HandelsNaam>? handelsnamen,
    List<SBIActiviteit>? sbiActiviteiten,
    List<KvKLink>? links,
    EmbeddedContainer? embedded,
  }) {
    return BasisProfiel(
      kvkNummer: kvkNummer ?? this.kvkNummer,
      indNonMailing: indNonMailing ?? this.indNonMailing,
      naam: naam ?? this.naam,
      formeleRegistratieDatum:
          formeleRegistratieDatum ?? this.formeleRegistratieDatum,
      materieleRegistratie: materieleRegistratie ?? this.materieleRegistratie,
      totaalWerkzamePersonen:
          totaalWerkzamePersonen ?? this.totaalWerkzamePersonen,
      statutaireNaam: statutaireNaam ?? this.statutaireNaam,
      handelsnamen: handelsnamen ?? this.handelsnamen,
      sbiActiviteiten: sbiActiviteiten ?? this.sbiActiviteiten,
      links: links ?? this.links,
      embedded: embedded ?? this.embedded,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'kvkNummer': kvkNummer});
    result.addAll({'indNonMailing': indNonMailing});
    result.addAll({'naam': naam});
    result.addAll({'formeleRegistratieDatum': formeleRegistratieDatum});
    result.addAll({'materieleRegistratie': materieleRegistratie.toMap()});
    result.addAll({'totaalWerkzamePersonen': totaalWerkzamePersonen});
    result.addAll({'statutaireNaam': statutaireNaam});
    result
        .addAll({'handelsnamen': handelsnamen.map((x) => x.toMap()).toList()});
    result.addAll(
        {'sbiActiviteiten': sbiActiviteiten.map((x) => x.toMap()).toList()});
    result.addAll({'links': links.map((x) => x.toMap()).toList()});
    result.addAll({'embedded': embedded.toMap()});

    return result;
  }

  factory BasisProfiel.fromMap(Map<String, dynamic> map) {
    return BasisProfiel(
      kvkNummer: map['kvkNummer'] ?? '',
      indNonMailing: map['indNonMailing'] ?? '',
      naam: map['naam'] ?? '',
      formeleRegistratieDatum: map['formeleRegistratieDatum'] ?? '',
      materieleRegistratie:
          MaterieleRegistratie.fromMap(map['materieleRegistratie']),
      totaalWerkzamePersonen: map['totaalWerkzamePersonen']?.toInt() ?? 0,
      statutaireNaam: map['statutaireNaam'] ?? '',
      handelsnamen: List<HandelsNaam>.from(
          map['handelsnamen']?.map((x) => HandelsNaam.fromMap(x))),
      sbiActiviteiten: List<SBIActiviteit>.from(
          map['sbiActiviteiten']?.map((x) => SBIActiviteit.fromMap(x))),
      links: List<KvKLink>.from(map['links']?.map((x) => KvKLink.fromMap(x))),
      embedded: EmbeddedContainer.fromMap(map['_embedded']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BasisProfiel.fromJson(String source) =>
      BasisProfiel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BasisProfiel(kvkNummer: $kvkNummer, indNonMailing: $indNonMailing, naam: $naam, formeleRegistratieDatum: $formeleRegistratieDatum, materieleRegistratie: $materieleRegistratie, totaalWerkzamePersonen: $totaalWerkzamePersonen, statutaireNaam: $statutaireNaam, handelsnamen: $handelsnamen, sbiActiviteiten: $sbiActiviteiten, links: $links, embedded: $embedded)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BasisProfiel &&
        other.kvkNummer == kvkNummer &&
        other.indNonMailing == indNonMailing &&
        other.naam == naam &&
        other.formeleRegistratieDatum == formeleRegistratieDatum &&
        other.materieleRegistratie == materieleRegistratie &&
        other.totaalWerkzamePersonen == totaalWerkzamePersonen &&
        other.statutaireNaam == statutaireNaam &&
        listEquals(other.handelsnamen, handelsnamen) &&
        listEquals(other.sbiActiviteiten, sbiActiviteiten) &&
        listEquals(other.links, links) &&
        other.embedded == embedded;
  }

  @override
  int get hashCode {
    return kvkNummer.hashCode ^
        indNonMailing.hashCode ^
        naam.hashCode ^
        formeleRegistratieDatum.hashCode ^
        materieleRegistratie.hashCode ^
        totaalWerkzamePersonen.hashCode ^
        statutaireNaam.hashCode ^
        handelsnamen.hashCode ^
        sbiActiviteiten.hashCode ^
        links.hashCode ^
        embedded.hashCode;
  }
}
