import 'package:flutter/material.dart';

import 'Extensions.dart';

class TransacctionItem extends StatelessWidget {
  final String title;
  final String detail;
  final String amount;
  final String image;

  const TransacctionItem({
    Key? key,
    required this.title,
    required this.detail,
    required this.amount,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Container(
        decoration: BoxDecoration(
            color: BrandColors.backgroundColorVariant2,
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: ExactAssetImage("assets/$image.png"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Text(detail, style: TextStyle(fontSize: 16))
                      ],
                    ),
                  ),
                  Text(
                    "\$$amount",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
