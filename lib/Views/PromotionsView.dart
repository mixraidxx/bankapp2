import 'package:flutter/material.dart';

import '../Brand/Extensions.dart';

class PromotionsView extends StatelessWidget {
  const PromotionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text("Promociones",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(16),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: BrandColors.backgroundColorVariant2,
                      borderRadius: BorderRadius.circular(16)),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage("assets/dinero.png"))),
                      ),
                      const Text("Adquiere un crédito personal",
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: BrandColors.backgroundColorVariant2,
                      borderRadius: BorderRadius.circular(16)),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage("assets/tarjeta.png"))),
                      ),
                      const Text("Aumenta tu línea de crédito",
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: BrandColors.backgroundColorVariant2,
                      borderRadius: BorderRadius.circular(16)),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage("assets/coche.png"))),
                      ),
                      const Text("Obtén un seguro de auto",
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
