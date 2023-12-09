import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String selectedName;

  const DetailPage({Key? key, required this.selectedName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          // Tampilkan nilai nama yang diterima dari HomePage
          child: Text(
            selectedName,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
