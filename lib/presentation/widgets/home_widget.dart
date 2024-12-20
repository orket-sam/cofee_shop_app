import 'dart:math';

import 'package:coffee_app/constants.dart';
import 'package:coffee_app/presentation/screens/coffee_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 380,
          child: Stack(
            children: [
              Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xff1f1f1f)),
              ),
              Positioned(
                left: 20,
                right: 20,
                top: MediaQuery.of(context).viewPadding.top + 5,
                bottom: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(
                          0xffa2a2a2,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Westlands, Nairobi',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(
                              0xffd8d8d8,
                            ),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down,
                            color: Color(
                              0xffd8d8d8,
                            ))
                      ],
                    ),
                    kSBox20V,
                    Row(
                      spacing: 15,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff2a2a2a),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Search coffee',
                                labelStyle: TextStyle(color: Colors.grey),
                                prefixIcon: Icon(
                                  CupertinoIcons.search,
                                  color: Colors.white,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: kBrandColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.tune,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    kSBox20V,
                    Image.asset(
                      'assets/Banner.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          height: 30,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              'All Coffee',
              'Machiato',
              'Latte',
              'American',
              'Italian',
              'Danish'
            ]
                .map((e) => Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color:
                              e == 'American' ? kBrandColor : Color(0xffededed),
                          borderRadius: BorderRadius.circular(
                            8,
                          )),
                      child: Text(
                        e,
                        style: TextStyle(
                          color: e == 'American' ? Colors.white : Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
        kSBox20V,
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2.15 / 3,
              crossAxisSpacing: 25,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
            ),
            itemCount: 5,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CoffeeDetailsScreen()));
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 1.5,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Stack(
                        children: [
                          Image.asset(
                            index.isEven ? 'assets/1.png' : 'assets/2.png',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              spacing: 3,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Text(
                                  '${(Random().nextInt(5) + 1).toDouble()}',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Caffee Mocha',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Deep foam',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(
                            0xffa2a2a2,
                          )),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          '\$ 5.78',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: kBrandColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
