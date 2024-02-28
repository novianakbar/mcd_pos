import 'package:flutter/material.dart';
import 'package:mcd/shared/theme.dart';

class OverviewOrderedItems extends StatelessWidget {
  const OverviewOrderedItems({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> orderedItem = [
      {
        'icon': 'assets/ic_burgers.png',
        'item': 'Quarter Pounder With Cheese',
        'order': '53110',
        'ppu': '\$113.99',
        'revenue': '\$212214.70',
      },
      {
        'icon': 'assets/ic_drinks.png',
        'item': 'Large Soda',
        'order': '520',
        'ppu': '\$2.99',
        'revenue': '\$1554.80',
      },
      {
        'icon': 'assets/ic_meals.png',
        'item': 'Big Mac McMeal',
        'order': '502',
        'ppu': '\$6.99',
        'revenue': '\$3508.98',
      },
      {
        'icon': 'assets/ic_burgers.png',
        'item': 'Big Mac',
        'order': '502',
        'ppu': '\$3.99',
        'revenue': '\$3508.98',
      },
      {
        'icon': 'assets/ic_sandwiches.png',
        'item': 'McChicken Deluxe',
        'order': '492',
        'ppu': '\$3.99',
        'revenue': '\$1963.08',
      },
      {
        'icon': 'assets/ic_dessert.png',
        'item': 'Oreo McFlurry',
        'order': '450',
        'ppu': '\$3.99',
        'revenue': '\$1795.59',
      },
      {
        'icon': 'assets/ic_burgers.png',
        'item': 'McDouble',
        'order': '450',
        'ppu': '\$1.99',
        'revenue': '\$895.50',
      },
    ];
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: "Ordered",
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: " Items",
                  style: blackTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DataTable(
            columnSpacing: 15,
            horizontalMargin: 0,
            columns: [
              DataColumn(
                label: Text(
                  'Items',
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 12,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Orders',
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 12,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'PPU',
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 12,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Revenue',
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
            rows: List.generate(
              orderedItem.length,
              (index) {
                final item = orderedItem[index];
                return DataRow(
                  cells: [
                    DataCell(
                      SizedBox(
                        width: 140,
                        child: Row(
                          children: [
                            Image.asset(
                              item['icon'],
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Text(
                                item['item'],
                                style: blackTextStyle.copyWith(
                                  fontWeight: regular,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: 50,
                        child: Text(
                          item['order'],
                          overflow: TextOverflow.visible,
                          softWrap: true,
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: 60,
                        child: Text(
                          item['ppu'],
                          overflow: TextOverflow.visible,
                          softWrap: true,
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: 60,
                        child: Text(
                          item['revenue'],
                          overflow: TextOverflow.visible,
                          softWrap: true,
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
