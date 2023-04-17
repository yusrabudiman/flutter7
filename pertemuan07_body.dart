import 'package:flutter/material.dart';
import 'package:flutter_navigation/components/pertemuan07_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pertemuan07Body extends StatelessWidget {
  final String title;
  const Pertemuan07Body({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
