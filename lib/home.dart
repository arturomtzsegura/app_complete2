import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List usuarios = [];
  @override
  //Cada que inicia la app se realizan las
  //siguientes acciones
  //Se añaden
  void initState(){
    usuarios.add('1#nombre1#corre1');
    usuarios.add('2#nombre2#corre2');
    usuarios.add('3#nombre3#corre3');
    usuarios.add('4#nombre4#corre4');
    usuarios.add('5#nombre5#corre5');
    usuarios.add('6#nombre6#corre6');
    usuarios.add('7#nombre7#corre7');
    usuarios.add('8#nombre8#corre8');
    usuarios.add('9#nombre9#corre9');
    usuarios.add('10#nombre10#corre10');
    super.initState();
  }
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Usuarios'),
        backgroundColor: Colors.yellow,
      ),
      body: Stack(
        children: [
          Padding(padding: EdgeInsets.all(20), child:
            Column(
              children: [
                const Card(
                  color: Colors.yellow,
                  child: Padding(padding: EdgeInsets.all(20),
                  child:
                    Row(
                      children: [
                        Expanded(flex: 4,
                            child: Text('Usuario',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),)),
                        Expanded(flex: 4,
                            child: Text('Correo',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),)),
                        Expanded(flex: 4,
                            child: Text('Opciones',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),) ),
                      ],
                    ),
                  )
                ),

                Expanded(
                    child: ListView.builder(
                        itemCount: usuarios.length,
                        itemBuilder: (BuildContext context,
                            int index){
                          var datos = usuarios[index].split('#');
                          return
                            Card(
                                color: Colors.grey,
                                child: Padding(padding: EdgeInsets.all(10),
                                  child:
                                  Row(
                                    children: [
                                      Expanded(flex: 4,
                                          child: Text(datos[1],
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),)),
                                      Expanded(flex: 4,
                                          child: Text(datos[2],
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),)),
                                      const Expanded(flex: 4,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            IconButton(onPressed: null, icon: Icon(Icons.add_box_outlined)),
                                            IconButton(onPressed: null, icon: Icon(Icons.ac_unit_rounded)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            );
                        }
                        ),
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(

              ),
              onPressed: () {
                ShowAlertDialog(context);
              },
              child: Text('Alerta'),
            ),
          ),
        ],
      ),
    );
  }

  void ShowAlertDialog(BuildContext context) {
    final size = MediaQuery.of(context).size;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Esta es mi primer alerta'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('¿Segurito quieres hacer esto?'),
                SizedBox(
                  height: size.height * 0.05,
                ),
                ElevatedButton(
                    onPressed: () {Navigator.pop(context);},
                    child: const Text('Cerrar'),
                )
              ],
            ),
          );
        }
    );
  }
}
