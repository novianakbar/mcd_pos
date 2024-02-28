import 'package:flutter/material.dart';
import 'package:mcd/screens/order/components/order_category_item.dart';
import 'package:mcd/screens/order/components/order_item.dart';
import 'package:mcd/shared/theme.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> categoryItem = [
      {
        'label': 'Meals',
        'image': 'assets/ic_meals.png',
      },
      {
        'label': 'Burgers',
        'image': 'assets/ic_burgers.png',
      },
      {
        'label': 'Sandwiches',
        'image': 'assets/ic_sandwiches.png',
      },
      {
        'label': 'Sides',
        'image': 'assets/ic_sides.png',
      },
    ];

    final List<Map> orderItem = [
      {
        'label': 'Quarter Pounder With Cheese',
        'image': 'assets/burger1.png',
        'price': '\$3.99',
      },
      {
        'label': 'Double Quarter Pounder With Cheese',
        'image': 'assets/burger2.png',
        'price': '\$4.79',
      },
      {
        'label': 'Double Quarter Pounder With Cheese Deluxe',
        'image': 'assets/burger3.png',
        'price': '\$4.29',
      },
      {
        'label': 'Big Mac',
        'image': 'assets/burger4.png',
        'price': '\$3.99',
      },
      {
        'label': 'Double Quarter Pounder With Cheese Deluxe',
        'image': 'assets/burger5.png',
        'price': '\$4.29',
      },
      {
        'label': 'Big Mac',
        'image': 'assets/burger6.png',
        'price': '\$3.99',
      },
    ];
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        surfaceTintColor: lightBackgroundColor,
        backgroundColor: lightBackgroundColor,
        elevation: 0,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 30,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios),
                color: primaryColor,
                iconSize: 20,
              ),
            ),
            RichText(
              text: TextSpan(
                text: "New",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
                children: [
                  TextSpan(
                    text: " Order",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                  )
                ],
              ),
            ),
            // Your widgets here
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 15,
        ),
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$16.25",
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Checkout",
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: regular,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: whiteColor,
                            size: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            OrderCategoryItem(categoryItem: categoryItem),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [OrderItem(orderItem: orderItem)],
            ))
          ],
        ),
      ),
    );
  }
}
