import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kvk_service/models/basisprofielen/materiele_registratie.dart';

class Vestiging {
  final String vestigingsNummer;
  final String kvkNummer;
  final String rsin;
  final String indNonMailing;
  final String formeleRegistratieDatum;
  final List<MaterieleRegistratie> materieleRegistratie;
  final String eersteHandelsnaam;
  final String indHoofdvestiging;
  final String indCommercieleVestiging;
  final int voltijdWerkzamePersonen;
  final int deeltijdWerkzamePersonen;
  final int totaalWerkzamePersonen;
  Vestiging({
    required this.vestigingsNummer,
    required this.kvkNummer,
    required this.rsin,
    required this.indNonMailing,
    required this.formeleRegistratieDatum,
    required this.materieleRegistratie,
    required this.eersteHandelsnaam,
    required this.indHoofdvestiging,
    required this.indCommercieleVestiging,
    required this.voltijdWerkzamePersonen,
    required this.deeltijdWerkzamePersonen,
    required this.totaalWerkzamePersonen,
  });

  Vestiging copyWith({
    String? vestigingsNummer,
    String? kvkNummer,
    String? rsin,
    String? indNonMailing,
    String? formeleRegistratieDatum,
    List<MaterieleRegistratie>? materieleRegistratie,
    String? eersteHandelsnaam,
    String? indHoofdvestiging,
    String? indCommercieleVestiging,
    int? voltijdWerkzamePersonen,
    int? deeltijdWerkzamePersonen,
    int? totaalWerkzamePersonen,
  }) {
    return Vestiging(
      vestigingsNummer: vestigingsNummer ?? this.vestigingsNummer,
      kvkNummer: kvkNummer ?? this.kvkNummer,
      rsin: rsin ?? this.rsin,
      indNonMailing: indNonMailing ?? this.indNonMailing,
      formeleRegistratieDatum:
          formeleRegistratieDatum ?? this.formeleRegistratieDatum,
      materieleRegistratie: materieleRegistratie ?? this.materieleRegistratie,
      eersteHandelsnaam: eersteHandelsnaam ?? this.eersteHandelsnaam,
      indHoofdvestiging: indHoofdvestiging ?? this.indHoofdvestiging,
      indCommercieleVestiging:
          indCommercieleVestiging ?? this.indCommercieleVestiging,
      voltijdWerkzamePersonen:
          voltijdWerkzamePersonen ?? this.voltijdWerkzamePersonen,
      deeltijdWerkzamePersonen:
          deeltijdWerkzamePersonen ?? this.deeltijdWerkzamePersonen,
      totaalWerkzamePersonen:
          totaalWerkzamePersonen ?? this.totaalWerkzamePersonen,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'vestigingsNummer': vestigingsNummer});
    result.addAll({'kvkNummer': kvkNummer});
    result.addAll({'rsin': rsin});
    result.addAll({'indNonMailing': indNonMailing});
    result.addAll({'formeleRegistratieDatum': formeleRegistratieDatum});
    result.addAll({
      'materieleRegistratie':
          materieleRegistratie.map((x) => x.toMap()).toList()
    });
    result.addAll({'eersteHandelsnaam': eersteHandelsnaam});
    result.addAll({'indHoofdvestiging': indHoofdvestiging});
    result.addAll({'indCommercieleVestiging': indCommercieleVestiging});
    result.addAll({'voltijdWerkzamePersonen': voltijdWerkzamePersonen});
    result.addAll({'deeltijdWerkzamePersonen': deeltijdWerkzamePersonen});
    result.addAll({'totaalWerkzamePersonen': totaalWerkzamePersonen});

    return result;
  }

  factory Vestiging.fromMap(Map<String, dynamic> map) {
    return Vestiging(
      vestigingsNummer: map['vestigingsNummer'] ?? '',
      kvkNummer: map['kvkNummer'] ?? '',
      rsin: map['rsin'] ?? '',
      indNonMailing: map['indNonMailing'] ?? '',
      formeleRegistratieDatum: map['formeleRegistratieDatum'] ?? '',
      materieleRegistratie: List<MaterieleRegistratie>.from(
          map['materieleRegistratie']
              ?.map((x) => MaterieleRegistratie.fromMap(x))),
      eersteHandelsnaam: map['eersteHandelsnaam'] ?? '',
      indHoofdvestiging: map['indHoofdvestiging'] ?? '',
      indCommercieleVestiging: map['indCommercieleVestiging'] ?? '',
      voltijdWerkzamePersonen: map['voltijdWerkzamePersonen']?.toInt() ?? 0,
      deeltijdWerkzamePersonen: map['deeltijdWerkzamePersonen']?.toInt() ?? 0,
      totaalWerkzamePersonen: map['totaalWerkzamePersonen']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Vestiging.fromJson(String source) =>
      Vestiging.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Vestiging(vestigingsNummer: $vestigingsNummer, kvkNummer: $kvkNummer, rsin: $rsin, indNonMailing: $indNonMailing, formeleRegistratieDatum: $formeleRegistratieDatum, materieleRegistratie: $materieleRegistratie, eersteHandelsnaam: $eersteHandelsnaam, indHoofdvestiging: $indHoofdvestiging, indCommercieleVestiging: $indCommercieleVestiging, voltijdWerkzamePersonen: $voltijdWerkzamePersonen, deeltijdWerkzamePersonen: $deeltijdWerkzamePersonen, totaalWerkzamePersonen: $totaalWerkzamePersonen)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Vestiging &&
        other.vestigingsNummer == vestigingsNummer &&
        other.kvkNummer == kvkNummer &&
        other.rsin == rsin &&
        other.indNonMailing == indNonMailing &&
        other.formeleRegistratieDatum == formeleRegistratieDatum &&
        listEquals(other.materieleRegistratie, materieleRegistratie) &&
        other.eersteHandelsnaam == eersteHandelsnaam &&
        other.indHoofdvestiging == indHoofdvestiging &&
        other.indCommercieleVestiging == indCommercieleVestiging &&
        other.voltijdWerkzamePersonen == voltijdWerkzamePersonen &&
        other.deeltijdWerkzamePersonen == deeltijdWerkzamePersonen &&
        other.totaalWerkzamePersonen == totaalWerkzamePersonen;
  }

  @override
  int get hashCode {
    return vestigingsNummer.hashCode ^
        kvkNummer.hashCode ^
        rsin.hashCode ^
        indNonMailing.hashCode ^
        formeleRegistratieDatum.hashCode ^
        materieleRegistratie.hashCode ^
        eersteHandelsnaam.hashCode ^
        indHoofdvestiging.hashCode ^
        indCommercieleVestiging.hashCode ^
        voltijdWerkzamePersonen.hashCode ^
        deeltijdWerkzamePersonen.hashCode ^
        totaalWerkzamePersonen.hashCode;
  }
}
