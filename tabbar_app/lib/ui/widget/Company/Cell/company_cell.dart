
import 'package:flutter/material.dart';
import 'package:tabbar_app/ui/helper/company_helper.dart';

class CompanyCellWidget  extends StatelessWidget {

  CompanyItem company;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(CompanyHelper.icon(company)),
    );
  }

  CompanyCellWidget(this.company);

}
