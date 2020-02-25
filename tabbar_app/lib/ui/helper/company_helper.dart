
enum CompanyItem {
  firefox,
  adidas,
  airlines,
  reebok,
  answear,
  puma,
}

class CompanyHelper {
  static String icon(CompanyItem item) {
    switch (item) {
      case CompanyItem.adidas:
        return 'assets/companies/adidas.png';
      case CompanyItem.firefox:
        return 'assets/companies/firefox.png';
      case CompanyItem.airlines:
        return 'assets/companies/airlines.png';
      case CompanyItem.reebok:
        return 'assets/companies/reebok.png';
      case CompanyItem.answear:
        return 'assets/companies/answear.png';
      case CompanyItem.puma:
        return 'assets/companies/puma.png';
    }
  }
}

extension C on  CompanyItem {

}

