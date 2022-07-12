import 'dart:convert';

import 'package:kvk_service/models/basisprofielen/eigenaar.dart';
import 'package:kvk_service/models/basisprofielen/vestiging.dart';

class EmbeddedContainer {
  Vestiging hoofdvestiging;
  Eigenaar eigenaar;
  EmbeddedContainer({
    required this.hoofdvestiging,
    required this.eigenaar,
  });

  EmbeddedContainer copyWith({
    Vestiging? hoofdvestiging,
    Eigenaar? eigenaar,
  }) {
    return EmbeddedContainer(
      hoofdvestiging: hoofdvestiging ?? this.hoofdvestiging,
      eigenaar: eigenaar ?? this.eigenaar,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'hoofdvestiging': hoofdvestiging.toMap()});
    result.addAll({'eigenaar': eigenaar.toMap()});

    return result;
  }

  factory EmbeddedContainer.fromMap(Map<String, dynamic> map) {
    return EmbeddedContainer(
      hoofdvestiging: Vestiging.fromMap(map['hoofdvestiging']),
      eigenaar: Eigenaar.fromMap(map['eigenaar']),
    );
  }

  String toJson() => json.encode(toMap());

  factory EmbeddedContainer.fromJson(String source) =>
      EmbeddedContainer.fromMap(json.decode(source));

  @override
  String toString() =>
      'EmbeddedContainer(hoofdvestiging: $hoofdvestiging, eigenaar: $eigenaar)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EmbeddedContainer &&
        other.hoofdvestiging == hoofdvestiging &&
        other.eigenaar == eigenaar;
  }

  @override
  int get hashCode => hoofdvestiging.hashCode ^ eigenaar.hashCode;
}
