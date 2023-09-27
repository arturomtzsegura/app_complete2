import 'package:app_complete2/aboutApp.dart';
import 'package:app_complete2/addUser.dart';
import 'package:app_complete2/mapView.dart';
import 'package:app_complete2/settings.dart';
import 'package:app_complete2/utils/constantes.dart';
import 'package:flutter/material.dart';


class menuOpts extends StatefulWidget {
  const menuOpts({super.key});

  @override
  State<menuOpts> createState() => _menuOptsState();
}

class _menuOptsState extends State<menuOpts> {
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
                      Text('Menu desplegable',
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
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  fixedSize: Size(size.width * 0.5, 45),
                                  backgroundColor: amarillo,
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const addUser()),);
                                },
                                child: const Text('Agregar usuario',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),)
                            ),

                            SizedBox(
                              height: size.height * 0.05,
                            ),

                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  fixedSize: Size(size.width * 0.5, 45),
                                  backgroundColor: amarillo,
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const aboutApp()),);
                                },
                                child: const Text('Acerca de',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),)
                            ),

                            SizedBox(
                              height: size.height * 0.05,
                            ),

                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  fixedSize: Size(size.width * 0.5, 45),
                                  backgroundColor: amarillo,
                                ),
                                onPressed: (){

                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const mapView()),);

                                },
                                child: const Text('Ver mapa',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),)
                            ),

                            SizedBox(
                              height: size.height * 0.05,
                            ),

                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  fixedSize: Size(size.width * 0.5, 45),
                                  backgroundColor: amarillo,
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const settings()),);
                                },
                                child: const Text('Ajustes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),)
                            ),

                            SizedBox(
                              height: size.height * 0.05,
                            ),

                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  fixedSize: Size(size.width * 0.5, 45),
                                  backgroundColor: amarillo,
                                ),
                                onPressed: (){
                                },
                                child: const Text('Salir',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),)
                            ),

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
