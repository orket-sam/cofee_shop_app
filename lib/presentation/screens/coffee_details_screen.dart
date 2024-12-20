import 'package:coffee_app/constants.dart';
import 'package:coffee_app/presentation/widgets/icon_container_widget.dart';
import 'package:flutter/material.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  const CoffeeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context).pop();
              },
              icon: Icon(Icons.favorite_outline))
        ],
        backgroundColor: Color(0xfff9f9f9),
        foregroundColor: Colors.black,
        title: Text('Detail'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kSBox20V,
                SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                kSBox20V,
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Caffe Mocha',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Ice/Hot',
                          style: TextStyle(
                            fontSize: 12,
                            color: kLightGreyText,
                          ),
                        ),
                        kSBox5V,
                        Row(
                          spacing: 4,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            RichText(
                                text: TextSpan(
                              text: '4.8',
                              children: [
                                TextSpan(
                                  text: ' (232)',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xffa2a2a2),
                                  ),
                                ),
                              ],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            )),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    IconContainerWidget(
                      iconUrl: 'delivery.png',
                    ),
                    IconContainerWidget(
                      iconUrl: 'bean.png',
                    ),
                    IconContainerWidget(
                      iconUrl: 'milk.png',
                    ),
                  ],
                ),
                kSBox20V,
                Divider(
                  color: kLightGreyText,
                  thickness: 0.15,
                  indent: 10,
                  endIndent: 10,
                ),
                kSBox10V,
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'A cappucino is an approximately 150ml beverage, with 25 ml of espresso coffee and 85ml of fresh milk.',
                  style: TextStyle(
                    fontSize: 16,
                    color: kLightGreyText,
                  ),
                ),
                kSBox20V,
                Text(
                  'Size',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                kSBox20V,
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: ['S', 'M', 'L']
                        .map((e) => Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: 25),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                border: Border.all(
                                  width: e == 'M' ? 1 : 0.45,
                                  color:
                                      e == 'M' ? kBrandColor : kLightGreyText,
                                ),
                                color: e == 'M'
                                    ? kBrandColor.withValues(alpha: 0.25)
                                    : Colors.white,
                              ),
                              child: Text(e),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              color: Colors.white,
            ),
            child: Row(
              spacing: 80,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 4,
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(
                        color: kLightGreyText,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '\$ 4.33',
                      style: TextStyle(
                        color: kBrandColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        foregroundColor: Colors.white,
                        backgroundColor: kBrandColor,
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 18.0, horizontal: 20),
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
