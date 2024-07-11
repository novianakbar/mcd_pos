import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:mcd/shared/theme.dart';

class OrderItem extends StatelessWidget {
  final List<Map> orderItem;
  const OrderItem({super.key, required this.orderItem});

  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: orderItem.length,
        // childAspectRatio: MediaQuery.of(context).size.width /
        //     (MediaQuery.of(context).size.height / 1.65),
        // childAspectRatio: 0.7,
        builder: (ctx, index) {
          final item = orderItem[index];
          return Container(
            height: 205,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 4),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  item['image'],
                  width: 110,
                  height: 110,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  item['price'],
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  item['label'],
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                    overflow: TextOverflow.visible,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        });
  }
}
