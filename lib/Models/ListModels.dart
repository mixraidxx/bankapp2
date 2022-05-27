import 'package:flutter/material.dart';

class TransferItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final String detailRouteName;

  TransferItem(this.title, this.subtitle, this.icon, this.detailRouteName);
}

class ItemListModel {
  final IconData icon;
  final String title;
  final String subtittle;

  ItemListModel(this.icon, this.title, this.subtittle);
}
