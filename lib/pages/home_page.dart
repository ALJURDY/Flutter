import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/drawer.dart';
import 'package:flutter_examen1/pages/regions_page.dart';
import 'package:flutter_examen1/components/video_hero.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: const AppDrawer(),
      body: ListView( 
        children: <Widget>[ 
          VideoHero(), // component affichant un Hero avec un background Video
          Container(
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'I. Nos Régions',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ),
         Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    ),

     Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.center,
        child: TextButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegionPage(title: 'Region Page')),
            );
          },
          icon: Icon(Icons.search),
          label: Text('Rechercher Par Région',
            style: TextStyle(color: Colors.black),),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 161, 178, 186)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ),
      ),
    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Opacity(
        opacity: 0.5,
        child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          style: TextStyle(fontSize: 8),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    
        ],
      ),
    );
  }
}
