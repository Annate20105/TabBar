
import 'package:flutter/material.dart';
import 'package:tabbar_app/model/offer.dart';
import 'package:tabbar_app/ui/helper/offer_helper.dart';
import 'package:tabbar_app/ui/widget/Offer/Item/offer_cell.dart';

class OfferWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
      child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 45.0,
          runSpacing: 6.0,
          children:this._createElements()
      ),
    );
  }

  List<Widget> _createElements() {
   return List.generate(50, (index) {
     OfferType type;
     if (index % 3 == 0) {
        type = OfferType.prostor;
     } else if (index % 3 == 1) {
       type = OfferType.present;
     } else {
       type = OfferType.sale;

     }
     return OfferItem(
          Offer("Название акции lorem", '12.01.2019', type)
     );
   }
   );
  }
}



