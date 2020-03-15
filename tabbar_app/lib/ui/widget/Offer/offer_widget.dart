
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tabbar_app/model/offer.dart';
import 'package:tabbar_app/ui/widget/Offer/Item/offer_item.dart';

class OfferWidget extends StatelessWidget {
  static int _count = 20;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      crossAxisCount: 2,
      staggeredTiles: _staggeredTiles,
      children: _createElements(),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      padding: const EdgeInsets.all(4.0),
    );

  }

  List<StaggeredTile> _staggeredTiles = List.generate(_count, (index) {
    if (index % 3 == 2) {
      return StaggeredTile.count(2, 1.15);
    }
    return StaggeredTile.count(1, 1.35);
  });

  List<Widget> _createElements() {
   return List.generate(_count, (index) {
     return OfferItem(
          Offer(index, "Название акции $index", 'до 12.01.2019', _imageName[index % 3])
     );
   });
  }

  List<String> get _imageName {
    return ["assets/offer/prostor.png", "assets/offer/present.png", "assets/offer/sale.png"];
  }




}



