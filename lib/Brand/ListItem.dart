import 'package:flutter/material.dart';

import 'Extensions.dart';

class ListItem extends StatelessWidget {
  final String? detail;
  final String? subtitle;
  final String title;
  final Function onTap;
  final IconData icon;

  const ListItem(
      {Key? key,
      this.detail,
      this.subtitle,
      required this.title,
      required this.onTap,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: GestureDetector(
        onTap: () => onTap(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Container(
                    child: Icon(icon),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: BrandColors.backgroundColorVariant,
                        borderRadius: BorderRadius.circular(20))),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: TextStyle(
                              color: BrandColors.accentColorVariant,
                              fontWeight: FontWeight.w600,
                              fontSize: 18)),
                      if (subtitle != null) ...{
                        Text(subtitle!, style: TextStyle(fontSize: 16))
                      }
                    ],
                  ),
                ),
                if (detail != null) ...{
                  Text(
                    detail!,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                }
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Divider(),
            )
          ],
        ),
      ),
    );
  }
}
