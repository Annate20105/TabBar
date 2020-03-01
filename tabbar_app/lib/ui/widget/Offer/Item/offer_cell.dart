import 'package:flutter/material.dart';
import 'package:tabbar_app/model/offer.dart';
import 'package:tabbar_app/ui/helper/offer_helper.dart';

class OfferItem extends StatelessWidget {

  Offer item;

  OfferItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
         child: Image.asset(item.type.icon),
    );
  }
}



