import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/dog_image.png', // Replace with the correct path to your image
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Track your pet's health",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Record vaccinations\nSet reminders',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Action when explore button is pressed
                      },
                      child: const Text('Explore'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Pet insurance options',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildOption(icon: Icons.pets, label: 'Pet health plans'),
                        _buildOption(icon: Icons.calendar_today, label: 'Appointment'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildOption(icon: Icons.favorite, label: 'Bone health'),
                        _buildOption(icon: Icons.shield, label: 'Dog life protection'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Latest pet plans',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildPlan(
                    icon: Icons.check_circle,
                    title: 'Tailored pet coverage',
                  ),
                  _buildPlan(
                    icon: Icons.pets,
                    title: 'Feline insurance',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'PetHealthTrack',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Assistance',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Help',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/assistance_image.png', // Replace with the correct path to your image
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.pets),
                    label: '',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption({required IconData icon, required String label}) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildPlan({required IconData icon, required String title}) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
