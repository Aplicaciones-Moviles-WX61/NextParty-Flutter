import 'package:flutter/material.dart';
import 'package:nextparty/parties/create_party.dart';
import 'package:nextparty/parties/parties.dart';
import 'package:nextparty/parties/profile.dart';
import 'package:nextparty/parties/settings.dart';
import 'package:nextparty/parties/search.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => IndexStateful();
}

class IndexStateful extends State<Index> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    CreateParty(),
    Parties(),
    Search(),
    Profile(),
    Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box, color: Colors.white70),
              activeIcon: Icon(Icons.add_box, color: Colors.white),
              backgroundColor: Color(0xff2699FB),
              label: 'Create Party',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt, color: Colors.white70),
              activeIcon: Icon(Icons.list_alt, color: Colors.white),
              backgroundColor: Color(0xff2699FB),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white70),
              activeIcon: Icon(Icons.search, color: Colors.white),
              backgroundColor: Color(0xff2699FB),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white70),
              activeIcon: Icon(Icons.person, color: Colors.white),
              backgroundColor: Color(0xff2699FB),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.white70),
              activeIcon: Icon(Icons.settings, color: Colors.white),
              backgroundColor: Color(0xff2699FB),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          onTap: (int id) {
            setState(() {
              _selectedIndex = id;
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded,
                    color: Color(0xff2699FB)),
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
              );
            },
          ),
          centerTitle: true,
          title: const Text(
            'PARTIES',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff2699FB),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ));
  }
}
