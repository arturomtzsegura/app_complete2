import 'package:app_complete2/utils/constantes.dart';
import 'package:flutter/material.dart';

class mapView extends StatefulWidget {
  const mapView({super.key});

  @override
  State<mapView> createState() => _mapViewState();
}

class _mapViewState extends State<mapView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: morado,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu))
      ),
      backgroundColor: morado,
      body: Stack(
        children: [

          SingleChildScrollView(
            padding: const EdgeInsets.all(0),
            child:
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  child: const Column(
                    children: [
                      Text('Mapa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),


                Container(
                  //color: Colors.white,
                  padding: const EdgeInsets.all(100),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      //bottomRight: Radius.circular(20.0),
                      //topLeft: Radius.circular(100.0),
                      //bottomLeft: Radius.circular(20.0)
                    ),

                  ),
                  child: Column(
                    children: [
                      //const label(texto: 'Ingresa el usuario',),
                      SizedBox(
                        width: 230,
                        child:
                        Column(
                          children: [
                            const Text('Aqui estaria el mapa'),
                            SizedBox(
                              height: size.height * 0.20,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
