
import 'package:flutter/material.dart';
import 'package:tabbar_app/ui/helper/company_helper.dart';

class CompanyItem  extends StatelessWidget {

  CompanyType company;
  @override
  Widget build(BuildContext context) {
    return Container (
      child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(side: BorderSide(color:Color(0x33C0C0C0), width: 1.0), borderRadius: BorderRadius.circular(9.0)),
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        color: CompanyHelper.color(company),
        child: Container (
            child: Image.asset(CompanyHelper.icon(company),
        ),
      ),
    ));
  }

  CompanyItem(this.company);

}
