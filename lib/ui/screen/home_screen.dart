import 'package:flutter/material.dart';
import 'package:flutter_base_template/ui/screen/google_maps_screen.dart';
import 'package:flutter_base_template/ui/screen/mapbox_screen.dart';
import 'package:flutter_base_template/ui/screen/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps Playground'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const MapBoxScreen();
                      }));
                    },
                    child: const Text('Mapbox'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.deepPurple,
                            Colors.purple,
                            Colors.purpleAccent,
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const GoogleMapsScreen();
                      }));
                    },
                    child: const Text('Google Maps'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.deepOrange,
                            Colors.orange,
                            Colors.orangeAccent,
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SettingsScreen();
                      }));
                    },
                    child: const Text('Settings'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
