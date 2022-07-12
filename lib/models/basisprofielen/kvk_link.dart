import 'dart:convert';

class KvKLink {
  final String rel;
  final String href;
  final String hreflang;
  final String media;
  final String title;
  final String type;
  final String deprecation;
  final String profile;
  final String name;
  KvKLink({
    required this.rel,
    required this.href,
    required this.hreflang,
    required this.media,
    required this.title,
    required this.type,
    required this.deprecation,
    required this.profile,
    required this.name,
  });

  KvKLink copyWith({
    String? rel,
    String? href,
    String? hreflang,
    String? media,
    String? title,
    String? type,
    String? deprecation,
    String? profile,
    String? name,
  }) {
    return KvKLink(
      rel: rel ?? this.rel,
      href: href ?? this.href,
      hreflang: hreflang ?? this.hreflang,
      media: media ?? this.media,
      title: title ?? this.title,
      type: type ?? this.type,
      deprecation: deprecation ?? this.deprecation,
      profile: profile ?? this.profile,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'rel': rel});
    result.addAll({'href': href});
    result.addAll({'hreflang': hreflang});
    result.addAll({'media': media});
    result.addAll({'title': title});
    result.addAll({'type': type});
    result.addAll({'deprecation': deprecation});
    result.addAll({'profile': profile});
    result.addAll({'name': name});

    return result;
  }

  factory KvKLink.fromMap(Map<String, dynamic> map) {
    return KvKLink(
      rel: map['rel'] ?? '',
      href: map['href'] ?? '',
      hreflang: map['hreflang'] ?? '',
      media: map['media'] ?? '',
      title: map['title'] ?? '',
      type: map['type'] ?? '',
      deprecation: map['deprecation'] ?? '',
      profile: map['profile'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory KvKLink.fromJson(String source) =>
      KvKLink.fromMap(json.decode(source));

  @override
  String toString() {
    return 'KvKLink(rel: $rel, href: $href, hreflang: $hreflang, media: $media, title: $title, type: $type, deprecation: $deprecation, profile: $profile, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is KvKLink &&
        other.rel == rel &&
        other.href == href &&
        other.hreflang == hreflang &&
        other.media == media &&
        other.title == title &&
        other.type == type &&
        other.deprecation == deprecation &&
        other.profile == profile &&
        other.name == name;
  }

  @override
  int get hashCode {
    return rel.hashCode ^
        href.hashCode ^
        hreflang.hashCode ^
        media.hashCode ^
        title.hashCode ^
        type.hashCode ^
        deprecation.hashCode ^
        profile.hashCode ^
        name.hashCode;
  }
}
