import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_navigation/main.dart';
import 'package:flutter_navigation/components/pertemuan07_provider.dart';
import 'package:flutter_navigation/components/pertemuan07_body.dart';
import 'package:provider/provider.dart';

class Pertemuan07Screen extends StatefulWidget {
  const Pertemuan07Screen({super.key});

  @override
  State<Pertemuan07Screen> createState() => _Pertemuan07ScreenState();
}

class _Pertemuan07ScreenState extends State<Pertemuan07Screen> {
  //State halaman prodi
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  //list body
  final List _body = [
    Pertemuan07Body(title: "Beranda"),
    Pertemuan07Body(title: "Chat"),
    Pertemuan07Body(title: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan07Provider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text('Pertemuan 07'),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(Icons.notifications),
              Positioned(
                  top: 10,
                  right: 0,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow,
                    ),
                    child: Text(
                      prov.ttlNotif.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: IconButton(
                onPressed: () {
                  prov.resetNotif();
                },
                icon: Icon(Icons.delete)),
          ),
          Icon(Icons.more_vert)
        ],
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
      ),
      body: Padding(padding: EdgeInsets.all(10), child: _body[_currentIndex]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          prov.setTTLNotif = 1;
        },
      ),
    );
  }
}
