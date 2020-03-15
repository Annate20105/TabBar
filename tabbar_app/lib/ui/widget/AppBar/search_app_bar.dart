

import 'package:flutter/material.dart';
import 'package:tabbar_app/ui/helper/app_bar_helper.dart';

class SearchAppBar extends StatefulWidget implements PreferredSizeWidget {


  @override
  _SearchAppBarState createState() => _SearchAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(104.0);


}

class _SearchAppBarState extends State<SearchAppBar> {
  Widget _appBarTitle = Text('');
  AppBarType _type = AppBarType.title;

  @override
  void initState() {
    _appBarTitle =  Text('Корпоратив');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar (
      title: _appBarTitle,
      leading: IconButton(icon: Image.asset('assets/icons/app_left_menu.png'),
        onPressed:() {
          Scaffold.of(context).openDrawer();
        },),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search, size: 24.0), onPressed: (){
            this.changeAppBarType();
        },),
        IconButton(icon: Icon(Icons.info_outline, size: 24.0),  onPressed: (){

        }),
      ],
      bottom: TabBar(
        tabs: [ Tab(text:"Предложения", ), Tab(text:"Компании"),],
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 3.0, color: Colors.white),
            insets: EdgeInsets.symmetric(vertical:0.0, horizontal: 16.0)
        ),
      ),

    );
  }

  void changeAppBarType() {
    setState(() {
      if (_type == AppBarType.title) {
        _type = AppBarType.search;
        _appBarTitle = TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              hintText: "Здесь может быть ваша реклама",
              hintStyle: TextStyle(color: Colors.white),
            ),
        );
      } else {
        _type = AppBarType.title;
        _appBarTitle = Text('Корпоратив');
      }
    });

  }
}
