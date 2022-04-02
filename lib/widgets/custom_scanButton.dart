import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      elevation: 0,
      onPressed: null,
      child: Icon(Icons.filter_center_focus),
    );
  }
}
