import 'package:flutter/material.dart';

import '../Brand/Extensions.dart';
import '../Models/ListModels.dart';

class TransferView extends StatelessWidget {
  const TransferView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      ItemListModel(Icons.phone_android, "Número telefónico",
          "Transfiere usando un número telefónico"),
      ItemListModel(Icons.credit_card, "Número de tarjeta",
          "Envía dinero usando un número de tarjeta"),
      ItemListModel(Icons.compare_arrows, "Entre tus cuentas",
          "Traspasa entre tus cuentas"),
    ];

    final pagosItems = [
      ItemListModel(Icons.qr_code_2, "Escanea código QR",
          "Realiza pagos usando un código QR"),
      ItemListModel(Icons.phone_android, "Telefonía móvil",
          "Recarga saldo para tu teléfono"),
      ItemListModel(
          Icons.tv, "Internet y TV", "Paga tus servicios de internet y TV"),
      ItemListModel(Icons.search, "Otros servicios", "Paga otros servicios")
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Transferencias",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: BrandColors.backgroundColorVariant2),
                  width: double.infinity,
                  child: Column(
                    children: items
                        .map((item) => BrandListItem(
                            icon: item.icon,
                            tittle: item.title,
                            subtittle: item.subtittle))
                        .toList(),
                  ),
                ),
              ),
              Text("Pagos",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: BrandColors.backgroundColorVariant2),
                  width: double.infinity,
                  child: Column(
                    children: pagosItems
                        .map((item) => BrandListItem(
                            icon: item.icon,
                            tittle: item.title,
                            subtittle: item.subtittle))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class BrandListItem extends StatelessWidget {
  final IconData icon;
  final String tittle;
  final String subtittle;
  BrandListItem(
      {required this.icon, required this.tittle, required this.subtittle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: BrandColors.primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  tittle,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(subtittle)
              ],
            ),
          ),
          Spacer(),
          Icon(Icons.chevron_right, color: BrandColors.primaryColor)
        ],
      ),
    );
  }
}
