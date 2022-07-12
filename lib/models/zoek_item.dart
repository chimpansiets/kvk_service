import 'dart:core';

class ZoekItem {
  final String? kvkNummer;
  final String? rsin;
  final String? vestigingsNummer;
  final String? handelsnaam;
  final String? straatnaam;
  final String? plaats;
  final String? postcode;
  final String? huisnummer;
  final String? huisnummerToevoeging;
  final String? type;
  final bool inclusiefInactieveRegistraties;

  // 1 <= pagina <= 1000
  final int pagina;

  // 1 <= aantal <= 100
  final int aantal;

  ZoekItem({
    this.kvkNummer,
    this.rsin,
    this.vestigingsNummer,
    this.handelsnaam,
    this.straatnaam,
    this.plaats,
    this.postcode,
    this.huisnummer,
    this.huisnummerToevoeging,
    this.type,
    this.inclusiefInactieveRegistraties = false,
    this.pagina = 1,
    this.aantal = 10,
  });

  String getUrlExtension() {
    String urlExtension = "zoeken?";

    urlExtension = (kvkNummer != null)
        ? "${urlExtension}kvkNummer=$kvkNummer"
        : urlExtension;

    urlExtension = (rsin != null) ? "${urlExtension}rsin=$rsin" : urlExtension;

    return urlExtension;
  }
}
