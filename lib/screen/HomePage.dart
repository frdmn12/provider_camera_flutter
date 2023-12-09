import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/provider.dart';
import 'package:provider_app/screen/DetailPage.dart';
import 'package:provider_app/screen/CameraPage.dart'; // Import CameraPage

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProviderApp>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              // Menggunakan ListView.builder untuk menampilkan daftar nama
              child: ListView.builder(
                itemCount: provider.getNames.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      provider.getNames[index],
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    // Anda dapat menambahkan fungsi atau aksi di sini
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            selectedName: provider.getNames[index],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            TextButton(
              onPressed: () async {
                await availableCameras().then((value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => CameraPage(cameras: value))));
              },
              child: Icon(Icons.camera, size: 50,),
            )
          ],
        ),
      ),
    );
  }
}
