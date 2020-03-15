import 'package:flutter/material.dart';
import 'package:tabbar_app/model/offer.dart';

class OfferItem extends StatelessWidget {

  Offer item;

  OfferItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Stack(
        alignment:AlignmentDirectional.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(item.image), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(9.0),
            ),
            ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding:EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [ Colors.transparent, Color(0xCC000000)],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(item.title,
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white)
                  ),
                  Text(item.date,
                      style: TextStyle(fontSize: 10.0, color: Color(0xFF8c8c8c))
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );



  }
}



