import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabbar_app/ui/helper/company_helper.dart';
import 'package:tabbar_app/ui/widget/Company/Item/company_item.dart';

class CompanyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 3.0 / 2.0,
      children:
      CompanyType.values.map((type) => CompanyItem(type)).toList());
    }
}


