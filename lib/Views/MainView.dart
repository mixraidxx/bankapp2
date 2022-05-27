import 'package:bankapp2/Brand/Extensions.dart';
import 'package:bankapp2/Views/HomeView.dart';
import 'package:bankapp2/Views/PromotionsView.dart';
import 'package:flutter/material.dart';

import 'OptionsView.dart';
import 'TransferView.dart';

class MainView extends StatefulWidget {
  static const routeName = "/main";
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeView(),
    TransferView(),
    PromotionsView(),
    OptionsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32), topRight: Radius.circular(32))),
        child: SafeArea(
          child: Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32))),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      icon: Icon(
                        Icons.home_outlined,
                        size: 35,
                        color: _currentIndex == 0
                            ? BrandColors.primaryColor
                            : Colors.grey,
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      icon: Icon(Icons.payment,
                          size: 35,
                          color: _currentIndex == 1
                              ? BrandColors.primaryColor
                              : Colors.grey)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                      icon: Icon(Icons.list_outlined,
                          size: 35,
                          color: _currentIndex == 2
                              ? BrandColors.primaryColor
                              : Colors.grey)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 3;
                        });
                      },
                      icon: Icon(Icons.settings_outlined,
                          size: 35,
                          color: _currentIndex == 3
                              ? BrandColors.primaryColor
                              : Colors.grey))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
