import 'package:flutter/material.dart';
import 'package:mcd/shared/theme.dart';

class OrderCategoryItem extends StatelessWidget {
  final List<Map> categoryItem;
  const OrderCategoryItem({super.key, required this.categoryItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(
          categoryItem.length,
          (index) {
            final item = categoryItem[index];
            return Container(
              height: 95,
              width: 92,
              margin: const EdgeInsets.only(right: 5),
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    item['image'],
                    color: whiteColor,
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Flexible(
                    child: Text(
                      item['label'],
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        )),
      ),
    );
  }
}
