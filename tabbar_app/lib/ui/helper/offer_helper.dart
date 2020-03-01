

enum OfferType {
  prostor,
  present,
  sale
}

extension OfferExtension on OfferType {
  String get icon {
    switch (this) {
      case OfferType.present:
        return "assets/offer/present.png";
      case OfferType.prostor:
        return "assets/offer/prostor.png";
      case OfferType.sale:
        return "assets/offer/sale.png";
    }
    return "";
  }


}