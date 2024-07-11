import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mcd/ui/screens/checkout/components/checkout_item.dart';
import 'package:mcd/shared/theme.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> orderedItem = [
      {
        'label': 'Quarter Pounder With Cheese Deluxe',
        'image': 'assets/burger1.png',
        'price': '\$4.29',
      },
      {
        'label': 'McDouble',
        'image': 'assets/burger2.png',
        'price': '\$1.99',
      },
      {
        'label': 'Large Fries',
        'image': 'assets/fries.png',
        'price': '\$2.99',
      },
      {
        'label': 'Medium Soda',
        'image': 'assets/soda.png',
        'price': '\$1.99',
      },
      {
        'label': 'M&Ms McFlurry',
        'image': 'assets/mcflurry.png',
        'price': '\$4.99',
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
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                'assets/ic_trash.png',
                width: 20,
                height: 20,
              ),
            ),
          ),
        ],
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
            Text(
              "Checkout",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            )
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
                  onPressed: () {
                    context.pushNamed('payment');
                  },
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
                            "Continue to Payment",
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
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          children: [CheckoutItem(orderedItem: orderedItem)],
        ),
      ),
    );
  }
}
