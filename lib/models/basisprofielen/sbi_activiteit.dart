import 'dart:convert';

class SBIActiviteit {
  final String sbiCode;
  final String sbiOMschrijving;
  final String indHoofdactiviteit;
  SBIActiviteit({
    required this.sbiCode,
    required this.sbiOMschrijving,
    required this.indHoofdactiviteit,
  });

  SBIActiviteit copyWith({
    String? sbiCode,
    String? sbiOMschrijving,
    String? indHoofdactiviteit,
  }) {
    return SBIActiviteit(
      sbiCode: sbiCode ?? this.sbiCode,
      sbiOMschrijving: sbiOMschrijving ?? this.sbiOMschrijving,
      indHoofdactiviteit: indHoofdactiviteit ?? this.indHoofdactiviteit,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'sbiCode': sbiCode});
    result.addAll({'sbiOMschrijving': sbiOMschrijving});
    result.addAll({'indHoofdactiviteit': indHoofdactiviteit});

    return result;
  }

  factory SBIActiviteit.fromMap(Map<String, dynamic> map) {
    return SBIActiviteit(
      sbiCode: map['sbiCode'] ?? '',
      sbiOMschrijving: map['sbiOMschrijving'] ?? '',
      indHoofdactiviteit: map['indHoofdactiviteit'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SBIActiviteit.fromJson(String source) =>
      SBIActiviteit.fromMap(json.decode(source));

  @override
  String toString() =>
      'SBIActiviteit(sbiCode: $sbiCode, sbiOMschrijving: $sbiOMschrijving, indHoofdactiviteit: $indHoofdactiviteit)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SBIActiviteit &&
        other.sbiCode == sbiCode &&
        other.sbiOMschrijving == sbiOMschrijving &&
        other.indHoofdactiviteit == indHoofdactiviteit;
  }

  @override
  int get hashCode =>
      sbiCode.hashCode ^ sbiOMschrijving.hashCode ^ indHoofdactiviteit.hashCode;
}
