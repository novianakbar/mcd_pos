import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mcd/shared/theme.dart';
import 'package:mcd/ui/screens/payment/components/payment_method_item.dart';
import 'package:mcd/ui/widget/custom_text_field.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> paymentMethodItem = [
      {
        'label': 'Card',
        'image': 'assets/ic_card.png',
      },
      {
        'label': 'Cash',
        'image': 'assets/ic_money.png',
      },
      {
        'label': 'QR',
        'image': 'assets/ic_qr.png',
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
              "Payment",
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
                            "Pay",
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
          children: [
            PaymentMethodItem(paymentMethodItem: paymentMethodItem),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              label: 'Cardholder Name',
              hint: 'Cardholder Name',
              marginBottom: 30,
            ),
            CustomTextField(
              label: 'Card Number',
              hint: 'Card Number',
              marginBottom: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 170,
                  child: CustomTextField(
                    label: 'Expiration Date',
                    hint: 'Expiration Date',
                  ),
                ),
                Container(
                  width: 170,
                  child: CustomTextField(
                    label: 'CVV',
                    hint: 'CVV',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
