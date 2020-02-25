
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OfferWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
//    return CustomScrollView(
//      slivers: <Widget>[
//        SliverGrid(
//          delegate: SliverChildBuilderDelegate((context, index) {
//            return GridTile(
//              child: CompanyCellWidget(CompanyItem.puma),
//            );
//          }),
//          gridDelegate: MySliverGridDelegate(),
//        ),
//        SliverToBoxAdapter(
//          child: Container(
//            color: Colors.blue,
//            height: 100,
//          ),
//        ),
//      ],
//    );
  }
}

//class MySliverGridDelegate extends SliverGridDelegate {
//  @override
//  SliverGridLayout getLayout(SliverConstraints constraints) => MySliverGridLayout();
//
//  @override
//  bool shouldRelayout(MySliverGridDelegate oldDelegate) => true;
//}
//
//class MySliverGridLayout extends SliverGridLayout {
//  @override
//  int getMinChildIndexForScrollOffset(double scrollOffset) => 0;
//
//  @override
//  int getMaxChildIndexForScrollOffset(double scrollOffset) => 2;
//
//  @override
//  SliverGridGeometry getGeometryForChildIndex(int index) {
//    final double crossAxisStart = (index % 4) * 80.0;
//    return SliverGridGeometry(
//      scrollOffset: (index ~/ 4) * 80 + 80 - (index % 4) * 20.0,
//      crossAxisOffset: crossAxisStart,
//      mainAxisExtent: 80,
//      crossAxisExtent: 80,
//    );
//  }
//
//  @override
//  double computeMaxScrollOffset(int childCount) => 0;
//}