import 'package:flutter/material.dart';
import 'package:myapp/dashboard.dart';
import 'package:myapp/login.dart';
import 'package:myapp/register.dart';

void main() {
  runApp(PetHealthTrackApp());
}

class PetHealthTrackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const PetHealthTrackHome(),
        '/createAccount': (context) => const PetHealthTrackCreateAccount(),
        '/login': (context) => const PetHealthTrackLogin(),
        '/dashboard': (context) => const Dashboard(),
      },
    );
  }
}

class PetHealthTrackHome extends StatelessWidget {
  const PetHealthTrackHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/paw_icon.png', // Asegúrate de tener esta imagen en tu carpeta assets
                        width: 100,
                        height: 100,
                      ),
                      const Positioned(
                        top: 35,
                        child: Text(
                          'APPOINTMENT',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 50,
                        child: Text(
                          '13 14 15 16\n17 18 19 20\n21 22 23 24',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'PetHealthTrack',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Your pet’s health companion',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PetHealthTrackCreateAccount()),
                  );
                },
                child: const Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}