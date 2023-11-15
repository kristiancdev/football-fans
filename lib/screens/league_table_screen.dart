import 'package:flutter/material.dart';

class LeagueTableScreen extends StatelessWidget {
  final String leagueName;

  const LeagueTableScreen(this.leagueName, {super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tableData = [
      {
        'position': 1,
        'clubLogo': 'assets/man_city.png',
        'clubName': 'Manchester City',
        'played': 10,
        'won': 7,
        'drawn': 2,
        'lost': 1,
        'goalsFor': 20,
        'goalsAgainst': 8,
        'goalDifference': 12,
        'points': 23
      },
      {
        'position': 2,
        'clubLogo': 'assets/arsenal.png',
        'clubName': 'Arsenal',
        'played': 10,
        'won': 7,
        'drawn': 1,
        'lost': 2,
        'goalsFor': 25,
        'goalsAgainst': 10,
        'goalDifference': 15,
        'points': 22
      },
      {
        'position': 3,
        'clubLogo': 'assets/tottenham.png',
        'clubName': 'Tottenham',
        'played': 10,
        'won': 6,
        'drawn': 3,
        'lost': 1,
        'goalsFor': 18,
        'goalsAgainst': 10,
        'goalDifference': 8,
        'points': 21
      },
      // Agrega más datos según sea necesario
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premier League - Tabla de Posiciones Simulada'),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Navegar de nuevo a la pantalla de inicio (HomeScreen)
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Pos')),
            DataColumn(label: Text('Club')),
            DataColumn(label: Text('PJ')),
            DataColumn(label: Text('PG')),
            DataColumn(label: Text('PE')),
            DataColumn(label: Text('PP')),
            DataColumn(label: Text('GF')),
            DataColumn(label: Text('GC')),
            DataColumn(label: Text('DG')),
            DataColumn(label: Text('Pts')),
          ],
          rows: tableData.map((rowData) {
            return DataRow(
              cells: [
                DataCell(Text(rowData['position'].toString())),
                DataCell(
                  Row(
                    children: [
                      Image.asset(
                        rowData['clubLogo'],
                        width: 20.0,
                        height: 20.0,
                      ),
                      const SizedBox(width: 8.0),
                      Text(rowData['clubName']),
                    ],
                  ),
                ),
                DataCell(Text(rowData['played'].toString())),
                DataCell(Text(rowData['won'].toString())),
                DataCell(Text(rowData['drawn'].toString())),
                DataCell(Text(rowData['lost'].toString())),
                DataCell(Text(rowData['goalsFor'].toString())),
                DataCell(Text(rowData['goalsAgainst'].toString())),
                DataCell(Text(rowData['goalDifference'].toString())),
                DataCell(Text(rowData['points'].toString())),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
