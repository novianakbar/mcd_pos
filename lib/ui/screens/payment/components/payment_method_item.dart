import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:mcd/shared/theme.dart';

class PaymentMethodItem extends StatelessWidget {
  final List<Map> paymentMethodItem;
  const PaymentMethodItem({super.key, required this.paymentMethodItem});

  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
        shrinkWrap: true,
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: paymentMethodItem.length,
        builder: (ctx, index) {
          final item = paymentMethodItem[index];
          return Container(
            height: 95,
            padding: const EdgeInsets.symmetric(
              vertical: 10.5,
              horizontal: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: primaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  item['image'],
                  color: Colors.white,
                  width: 24,
                  height: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  item['label'],
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
