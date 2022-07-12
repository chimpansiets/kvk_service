import 'dart:convert';

class GeoData {
  final String addresseerbaarObjectId;
  final String nummerAanduidingId;
  final double gpsLatitude;
  final double gpsLongitude;
  final double rijksdriehoekX;
  final double rijksdriehoekY;
  final double rijksdriehoekZ;
  GeoData({
    required this.addresseerbaarObjectId,
    required this.nummerAanduidingId,
    required this.gpsLatitude,
    required this.gpsLongitude,
    required this.rijksdriehoekX,
    required this.rijksdriehoekY,
    required this.rijksdriehoekZ,
  });

  GeoData copyWith({
    String? addresseerbaarObjectId,
    String? nummerAanduidingId,
    double? gpsLatitude,
    double? gpsLongitude,
    double? rijksdriehoekX,
    double? rijksdriehoekY,
    double? rijksdriehoekZ,
  }) {
    return GeoData(
      addresseerbaarObjectId:
          addresseerbaarObjectId ?? this.addresseerbaarObjectId,
      nummerAanduidingId: nummerAanduidingId ?? this.nummerAanduidingId,
      gpsLatitude: gpsLatitude ?? this.gpsLatitude,
      gpsLongitude: gpsLongitude ?? this.gpsLongitude,
      rijksdriehoekX: rijksdriehoekX ?? this.rijksdriehoekX,
      rijksdriehoekY: rijksdriehoekY ?? this.rijksdriehoekY,
      rijksdriehoekZ: rijksdriehoekZ ?? this.rijksdriehoekZ,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'addresseerbaarObjectId': addresseerbaarObjectId});
    result.addAll({'nummerAanduidingId': nummerAanduidingId});
    result.addAll({'gpsLatitude': gpsLatitude});
    result.addAll({'gpsLongitude': gpsLongitude});
    result.addAll({'rijksdriehoekX': rijksdriehoekX});
    result.addAll({'rijksdriehoekY': rijksdriehoekY});
    result.addAll({'rijksdriehoekZ': rijksdriehoekZ});

    return result;
  }

  factory GeoData.fromMap(Map<String, dynamic> map) {
    return GeoData(
      addresseerbaarObjectId: map['addresseerbaarObjectId'] ?? '',
      nummerAanduidingId: map['nummerAanduidingId'] ?? '',
      gpsLatitude: map['gpsLatitude']?.toDouble() ?? 0.0,
      gpsLongitude: map['gpsLongitude']?.toDouble() ?? 0.0,
      rijksdriehoekX: map['rijksdriehoekX']?.toDouble() ?? 0.0,
      rijksdriehoekY: map['rijksdriehoekY']?.toDouble() ?? 0.0,
      rijksdriehoekZ: map['rijksdriehoekZ']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory GeoData.fromJson(String source) =>
      GeoData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GeoData(addresseerbaarObjectId: $addresseerbaarObjectId, nummerAanduidingId: $nummerAanduidingId, gpsLatitude: $gpsLatitude, gpsLongitude: $gpsLongitude, rijksdriehoekX: $rijksdriehoekX, rijksdriehoekY: $rijksdriehoekY, rijksdriehoekZ: $rijksdriehoekZ)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GeoData &&
        other.addresseerbaarObjectId == addresseerbaarObjectId &&
        other.nummerAanduidingId == nummerAanduidingId &&
        other.gpsLatitude == gpsLatitude &&
        other.gpsLongitude == gpsLongitude &&
        other.rijksdriehoekX == rijksdriehoekX &&
        other.rijksdriehoekY == rijksdriehoekY &&
        other.rijksdriehoekZ == rijksdriehoekZ;
  }

  @override
  int get hashCode {
    return addresseerbaarObjectId.hashCode ^
        nummerAanduidingId.hashCode ^
        gpsLatitude.hashCode ^
        gpsLongitude.hashCode ^
        rijksdriehoekX.hashCode ^
        rijksdriehoekY.hashCode ^
        rijksdriehoekZ.hashCode;
  }
}
