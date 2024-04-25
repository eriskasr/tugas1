import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Karakter extends StatefulWidget {
  const Karakter({super.key});

  @override
  State<Karakter> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Karakter> {
  String? namaChar = "Silahkan Pilih Karakter";

  gantiNama(String nama) {
    setState(() {
      namaChar = nama;
    });
  }

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Karakter Upin & Ipin",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue[100],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 60.0,
                  right: 60.0,
                  top: 10.0,
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      child: GestureDetector(
                        onTap: () async {
                          gantiNama("UPIN");
                          await player.setAsset("asset_media/suara/upin.mp3");
                          await player.play();
                        },
                        child: Card(
                          child: Image.asset("asset_media/gambar/upin.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () async {
                          gantiNama("IPIN");
                          await player
                              .setAsset("asset_media/suara/ini cacing maa.mp3");
                          await player.play();
                        },
                        child: Card(
                          child: Image.asset("asset_media/gambar/ipin.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () async {
                          gantiNama("MAIL");
                          await player
                              .setAsset("asset_media/suara/dua singgit.mp3");
                          await player.play();
                        },
                        child: Card(
                          child: Image.asset("asset_media/gambar/MAIL.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () async {
                          gantiNama("JARJIT");
                          await player.setAsset("asset_media/suara/jarjit.mp3");
                          await player.play();
                        },
                        child: Card(
                          child: Image.asset("asset_media/gambar/jarjit.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height / 3.5,
                width: size.width,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () async {
                    gantiNama("ATOK DALANG");
                    await player.setAsset("asset_media/suara/eh-haah-lah.mp3");
                    await player.play();
                  },
                  child: Card(
                    child: Image.asset("asset_media/gambar/TOK DALANG.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      namaChar ?? "Silahkan Pilih Karakter",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
