
import 'package:flutter/material.dart';

enum CompanyType {
  firefox,
  adidas,
  airlines,
  reebok,
  answear,
  puma,
}

class CompanyHelper {
  static String icon(CompanyType item) {
    switch (item) {
      case CompanyType.adidas:
        return 'assets/companies/adidas.png';
      case CompanyType.firefox:
        return 'assets/companies/firefox.png';
      case CompanyType.airlines:
        return 'assets/companies/airlines.png';
      case CompanyType.reebok:
        return 'assets/companies/reebok.png';
      case CompanyType.answear:
        return 'assets/companies/answear.png';
      case CompanyType.puma:
        return 'assets/companies/puma.png';
    }
    return '';
  }


  static Color color(CompanyType item) {
    switch (item) {
      case CompanyType.adidas:
        return Colors.white;
      case CompanyType.firefox:
        return Color(0xFFFE5000);
      case CompanyType.airlines:
        return Colors.white;
      case CompanyType.reebok:
        return Color(0xFF0074CD);
      case CompanyType.answear:
        return Color(0xFFF1B1C8);
      case CompanyType.puma:
        return Colors.black;
    }
  return Colors.white;
  }
}

