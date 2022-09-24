import 'package:berita_bola_using_parameter/components/card_news.dart';
import 'package:berita_bola_using_parameter/components/main_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff3DC153),
            title: const Text("Berita Bola"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "BERITA BOLA",
                ),
                Tab(
                  text: "PERTANDINGAN",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const MainNews(),
                  Expanded(
                    child: ListView(
                      children: [
                        CardNews(
                          'Jakarta 20 Agustus 2022',
                          'Liverpool Juara lagi lah ya, bisa lah ya taun ini',
                          'images/champ-liverpool.jpg',
                        ),
                        CardNews(
                          'Malang, 24 September 2022',
                          'Yok bisa Liverpool yok',
                          'images/champ-liverpool.jpg',
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Center(
                child: Text("Halaman Jadwal"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
