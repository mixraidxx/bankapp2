import 'package:flutter/material.dart';

import '../Brand/Extensions.dart';
import '../Models/ListModels.dart';
import 'TransferView.dart';

class OptionsView extends StatelessWidget {
  const OptionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      ItemListModel(Icons.person, "Información personal",
          "Detalle de tu información personal"),
    ];

    final items2 = [
      ItemListModel(
          Icons.password, "Cambiar contraseña", "Actualiza tu contraseña"),
      ItemListModel(Icons.fingerprint, "Reconocimiento facial o huella",
          "Activa el inicio rápido"),
    ];

    final items3 = [
      ItemListModel(Icons.person_pin, "Información del contrato",
          "Condiciones de mi contrato"),
      ItemListModel(Icons.description_outlined, "Términos y condiciones",
          "Consulta los términos y condiciones\nde uso"),
      ItemListModel(Icons.security, "Aviso de privacidad",
          "Consulta nuestro aviso de privacidad"),
      ItemListModel(
          Icons.messenger_outline, "Contáctanos", "Dudas o sugerencias"),
      ItemListModel(
          Icons.info_outline, "Acerca de", "Información de la aplicación"),
    ];

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ajustes",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 16,
              ),
              Text("Mi cuenta",
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
              Text("Seguridad",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: BrandColors.backgroundColorVariant2),
                  width: double.infinity,
                  child: Column(
                    children: items2
                        .map((item) => BrandListItem(
                            icon: item.icon,
                            tittle: item.title,
                            subtittle: item.subtittle))
                        .toList(),
                  ),
                ),
              ),
              Text("General",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: BrandColors.backgroundColorVariant2),
                  width: double.infinity,
                  child: Column(
                    children: items3
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
        ),
      )),
    );
  }
}
