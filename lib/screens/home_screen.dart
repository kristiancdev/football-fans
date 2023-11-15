import 'package:flutter/material.dart';
import 'package:football_fan/screens/league_table_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> footballLeagues = [
      {'name': 'Premier League', 'imagePath': 'assets/premier_league.png'},
      {'name': 'La Liga', 'imagePath': 'assets/la_liga.png'},
      {'name': 'Bundesliga', 'imagePath': 'assets/bundesliga.png'},
      {'name': 'Serie A', 'imagePath': 'assets/serie_a.png'},
      {'name': 'Ligue 1', 'imagePath': 'assets/ligue_1.png'},
      {'name': 'MLS', 'imagePath': 'assets/mls.png'},
      // Agrega más ligas según sea necesario
    ];

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header con texto central
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Consulta tu liga favorita',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Cuadrícula de ligas de fútbol
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Dos columnas en la cuadrícula
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: footballLeagues.length,
              itemBuilder: (context, index) {
                return buildLeagueCard(
                  context,
                  footballLeagues[index]['name'],
                  footballLeagues[index]['imagePath'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLeagueCard(BuildContext context, String name, String imagePath) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () {
          // Navegar a la pantalla de tabla de posiciones al tocar la tarjeta
          Navigator.push(
            context,
            //MaterialPageRoute(builder: (context) => LeagueTableScreen(name)),
            MaterialPageRoute(builder: (context) => LeagueTableScreen(name)),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 80.0,
              height: 80.0,
            ),
            const SizedBox(height: 8.0),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
