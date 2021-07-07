import 'dart:math';

import 'package:bankapp2/Brand/Extensions.dart';
import 'package:bankapp2/Brand/ListItem.dart';
import 'package:bankapp2/Brand/TransactionItem.dart';
import 'package:bankapp2/Models/ListModels.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class AccountDetailView extends StatefulWidget {
  static const routeName = "/accountdetail";
  const AccountDetailView({Key? key}) : super(key: key);

  @override
  _AccountDetailViewState createState() => _AccountDetailViewState();
}

class _AccountDetailViewState extends State<AccountDetailView> {
  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    ];

    var actions = [
      TransferItem("CVV dinámico", "Genera un codigo de seguridad temporal",
          Icons.credit_card_outlined, "cvv"),
      TransferItem("Estado de cuenta", "Consulta tus estados de cuenta",
          Icons.paid_outlined, ""),
      TransferItem("Detalle de cuenta", "Número de cuenta, CLABE y más",
          Icons.info_outline, ""),
      TransferItem("Cambiar PIN", "Asigna un nuevo número de PIN",
          Icons.pin_outlined, ""),
      // TransferItem("Reissue card", "Issuing a new card with data retention",
      //     Icons.credit_card, OperationsHistoryView.routeName),
      TransferItem("Reportar tarjeta", "Reporta tu tarjeta por obo o extravio",
          Icons.credit_card_off_outlined, ""),
    ];

    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GFCarousel(
                aspectRatio: 2,
                enableInfiniteScroll: false,
                reverse: false,
                items: imageList.map(
                  (url) {
                    return Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFBA8BBB), Color(0xFFFD8B67)],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$12,525",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "VISA",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1234 **** **** 4321",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "03/24",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ).toList(),
                onPageChanged: (index) {},
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...actions
                        .map((item) => OperationItem(
                              title: item.title,
                              icon: item.icon,
                              onTap: () {
                                if (item.detailRouteName == "cvv") {
                                  cvvBottomSheet();
                                }
                                print("Hola mundo");
                              },
                            ))
                        .toList()
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Text("Ultimos movimientos",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              TransacctionItem(
                  title: "Uber",
                  detail: "27 de junio",
                  amount: "125.00",
                  image: "uber"),
              TransacctionItem(
                  title: "Netflix",
                  detail: "25 de junio",
                  amount: "125.00",
                  image: "netflix")
            ],
          ),
        ));
  }

  cvvBottomSheet() {
    int min = 100; //min and max values act as your 6 digit range
    int max = 999;
    var randomizer = new Random();
    var rNum = min + randomizer.nextInt(max - min);
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32), topRight: Radius.circular(32))),
        builder: (_) {
          return SafeArea(
            child: Container(
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: BrandColors.backgroundColorVariant,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32))),
                    width: double.infinity,
                    child: Center(
                      child: Stack(
                        children: [
                          Center(
                              child: Text("$rNum",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold))),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text("CVV dinámico",
                                    style: TextStyle(fontSize: 18)),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularCountDownTimer(
                              height: 100,
                              width: 100,
                              isReverse: true,
                              isReverseAnimation: false,
                              autoStart: true,
                              duration: 300,
                              initialDuration: 0,
                              fillColor: Colors.green,
                              ringColor: BrandColors.backgroundColorVariant,
                              onComplete: () {
                                Navigator.pop(context);
                              },
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                                "Tu código de seguridad (CVV) tiene una validez de 5 minutos",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18))
                          ],
                        ),
                      ),
                    ),
                  )),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            width: double.infinity,
                            child: Center(
                                child: Text("Aceptar",
                                    style: TextStyle(color: Colors.white))))),
                  ))
                ],
              ),
            ),
          );
        });
  }
}

class OperationItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  const OperationItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 85,
          height: 70,
          decoration: BoxDecoration(
              color: BrandColors.backgroundColorVariant2,
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Icon(icon),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                child: Text(title,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
