import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const AppSismos());
}

class AppSismos extends StatelessWidget {
  const AppSismos({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sismos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.help),
                  color: Color.fromARGB(255, 255, 111, 0),
                  onPressed: () {},
                )
              ],
            ),
            bottom: const TabBar(
              labelColor: Color.fromARGB(255, 255, 111, 0),
              unselectedLabelColor: Colors.black,
              indicatorColor: Color.fromARGB(255, 255, 111, 0),
              tabs: [
                Tab(text: 'Mapa'),
                Tab(text: 'Lista'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/mapa.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '24 horas',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '15 días',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.date_range,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                children: _buildPlacesList(),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color.fromARGB(255, 255, 111, 0),
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.waves),
                label: 'Sismos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.hearing),
                label: 'Lo sentiste',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: 'Más',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> _buildPlacesList() {
  return [
    _buildPlaceItem('San José', 'San José'),
    _buildPlaceItem('Monteverde', 'Puntarenas'),
    _buildPlaceItem('Tamarindo', 'Guanacaste'),
    _buildPlaceItem('Manuel Antonio', 'Puntarenas'),
    _buildPlaceItem('La Fortuna', 'Alajuela'),
    _buildPlaceItem('Tortuguero', 'Limón'),
  ];
}

Widget _buildPlaceItem(String placeName, String province) {
  return ListTile(
    title: Text(placeName),
    subtitle: Text(province),
    leading: Icon(Icons.location_on),
    onTap: () {},
  );
}
