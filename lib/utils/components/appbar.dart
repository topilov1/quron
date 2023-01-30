import 'package:flutter/material.dart';

AppBar appbar(BuildContext context, String title) {
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Theme.of(context).iconTheme.color),
    title: Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    ),
    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
  );
}
