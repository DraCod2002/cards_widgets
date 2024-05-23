import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Eventos Deportivos'),
        ),
        body: ListView(
          children: [
            EventCard(
              eventName: 'Maratón de Boston',
              sport: 'Atletismo',
              date: 'Fecha: 21 de Abril, 2024',
              location: 'Ubicación: Boston, USA',
              imageUrl: 'https://a4.espncdn.com/combiner/i?img=%2Fphoto%2F2023%2F0414%2Fr1158701_1296x729_16%2D9.jpg', // URL de la imagen
            ),
             EventCard(
              eventName: 'Champions League',
              sport: 'Futbol',
              date: 'Fecha: 01 de Julio, 2024',
              location: 'Ubicación: Turquia, Antlya',
              imageUrl: 'https://espnpressroom.com/mexico/files/2019/03/Logo-UCL.jpg', // URL de la imagen
            ),
             EventCard(
              eventName: 'Finales de la NBA',
              sport: 'Basquetball',
              date: 'Fecha: 12 de Julio, 2024',
              location: 'Los Angeles, Californoa',
              imageUrl: 'https://a.espncdn.com/photo/2022/0601/nba_warriors-celtics_16x9_800x450.jpg', // URL de la imagen
            ),
             EventCard(
              eventName: 'Mundial de Fórmula 1',
              sport: 'Formula 1',
              date: 'Fecha: 03 de Octubre, 2024',
              location: 'Ubicación: Roma, Italia',
              imageUrl: 'https://file.mundodeportivo.com/ext2/2024+CIRCUITOS+F1/INICIM.jpg', // URL de la imagen
            ),
          
            // Agrega más tarjetas aquí si es necesario
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String eventName;
  final String sport;
  final String date;
  final String location;
  final String imageUrl;

  const EventCard({
    required this.eventName,
    required this.sport,
    required this.date,
    required this.location,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 150,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventName,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(sport),
                SizedBox(height: 10),
                Text(date),
                SizedBox(height: 10),
                Text(location),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
