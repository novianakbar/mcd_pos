import 'package:flutter/material.dart';
import 'package:mcd/shared/theme.dart';

class CheckoutItem extends StatelessWidget {
  final List<Map> orderedItem;
  const CheckoutItem({super.key, required this.orderedItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        orderedItem.length,
        (index) {
          final item = orderedItem[index];
          return Container(
            margin: const EdgeInsets.only(
              bottom: 5,
              top: 5,
            ),
            width: double.infinity,
            padding: const EdgeInsets.only(
              right: 10,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  item['image'],
                  width: 72,
                  height: 72,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 200,
                                child: Text(
                                  item['label'],
                                  style: blackTextStyle.copyWith(
                                    fontWeight: medium,
                                    fontSize: 14,
                                  ),
                                  softWrap: true,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    '1',
                                    style: primaryTextStyle.copyWith(
                                      fontWeight: medium,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  item['price'],
                                  style: blackTextStyle.copyWith(
                                    fontWeight: medium,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 15,
                                  height: 15,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.highlight_off,
                                      color: greyColor,
                                      size: 15,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
