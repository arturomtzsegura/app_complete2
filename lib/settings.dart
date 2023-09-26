import 'package:app_complete2/utils/constantes.dart';
import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
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
                      Text('Ajustes',
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
                                },
                                child: const Text('Crear notificaciones',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),)
                            ),

                            SizedBox(
                              height: size.height * 0.05,
                            ),

                            //const label(texto: 'Ingresa la contraseña',),

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
                                child: const Text('Cambiar tema',
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
                                child: const Text('Borrar cuenta',
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
