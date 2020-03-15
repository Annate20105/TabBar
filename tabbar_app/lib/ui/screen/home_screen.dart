import 'package:flutter/material.dart';
import 'package:tabbar_app/ui/widget/AppBar/search_app_bar.dart';
import 'package:tabbar_app/ui/widget/Company/company_widget.dart';
import 'package:tabbar_app/ui/widget/Drawer/main_drawer.dart';
import 'package:tabbar_app/ui/widget/Offer/offer_widget.dart';

class HomeWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: MainDrawer(),
        body: TabBarView(
          children: <Widget>[ OfferWidget(), CompanyWidget(),],
        ),
        appBar: SearchAppBar(),
      ),

    );
  }
}
