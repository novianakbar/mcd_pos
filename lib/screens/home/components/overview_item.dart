import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';

class OverviewItem extends StatelessWidget {
  final List<Map> overviewItem;
  const OverviewItem({super.key, required this.overviewItem});

  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
        shrinkWrap: true,
        crossAxisCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: overviewItem.length,
        // childAspectRatio: MediaQuery.of(context).size.width /
        //     (MediaQuery.of(context).size.height / 1.65),
        // childAspectRatio: 0.7,
        builder: (ctx, index) {
          final item = overviewItem[index];
          return Container(
            height: 95,
            padding: const EdgeInsets.symmetric(
              vertical: 10.5,
              horizontal: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: const Color(0xff003049),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  item['image'],
                  color: Colors.white,
                  width: 24,
                  height: 20,
                ),
                const SizedBox(
                  height: 13,
                ),
                Text(
                  item['value'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item['title'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
