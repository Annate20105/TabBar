import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabbar_app/ui/helper/company_helper.dart';
import 'package:tabbar_app/ui/widget/Company/Cell/company_cell.dart';

class CompanyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 3.0 / 2.0,
      children: List.generate(CompanyItem.values.length, (index) {
        return GridTile(
            child: CompanyCellWidget(CompanyItem.values[index]),
        );
    }),
    );
  }
}


