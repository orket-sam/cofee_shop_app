import 'package:flutter/material.dart';

class IconContainerWidget extends StatelessWidget {
  final String iconUrl;
  const IconContainerWidget({
    super.key,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xfff5f5f5),
      ),
      child: Image.asset(
        'assets/$iconUrl',
        width: 40,
        height: 40,
      ),
    );
  }
}
