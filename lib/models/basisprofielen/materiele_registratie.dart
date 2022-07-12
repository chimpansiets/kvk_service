import 'dart:convert';

class MaterieleRegistratie {
  final String datumAanvang;
  final String datumEinde;
  MaterieleRegistratie({
    required this.datumAanvang,
    required this.datumEinde,
  });

  MaterieleRegistratie copyWith({
    String? datumAanvang,
    String? datumEinde,
  }) {
    return MaterieleRegistratie(
      datumAanvang: datumAanvang ?? this.datumAanvang,
      datumEinde: datumEinde ?? this.datumEinde,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'datumAanvang': datumAanvang});
    result.addAll({'datumEinde': datumEinde});

    return result;
  }

  factory MaterieleRegistratie.fromMap(Map<String, dynamic> map) {
    return MaterieleRegistratie(
      datumAanvang: map['datumAanvang'] ?? '',
      datumEinde: map['datumEinde'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MaterieleRegistratie.fromJson(String source) =>
      MaterieleRegistratie.fromMap(json.decode(source));

  @override
  String toString() =>
      'MaterieleRegistratie(datumAanvang: $datumAanvang, datumEinde: $datumEinde)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MaterieleRegistratie &&
        other.datumAanvang == datumAanvang &&
        other.datumEinde == datumEinde;
  }

  @override
  int get hashCode => datumAanvang.hashCode ^ datumEinde.hashCode;
}
