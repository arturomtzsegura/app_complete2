import 'package:app_complete2/utils/constantes.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class slidingUpPanel extends StatefulWidget {
  const slidingUpPanel({super.key});

  @override
  State<slidingUpPanel> createState() => _slidingUpPanelState();
}

class _slidingUpPanelState extends State<slidingUpPanel> {
  bool muestraAlert = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          IconButton(
              onPressed: (){
                setState(() {
                  print(muestraAlert);
                  muestraAlert = true;
                  print(muestraAlert);
                });
              },
              icon: Icon(Icons.delete)),
          SlidingUpPanel(
            //Cada que abra la vista estará abierto
            defaultPanelState: muestraAlert ? PanelState.OPEN : PanelState.CLOSED,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(60),
              topLeft: Radius.circular(60),
            ),
            color: morado,
            minHeight: muestraAlert ? 600 : 50,
            maxHeight: 600,
            panel: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60),
                  topLeft: Radius.circular(60),
                )
              ),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Text('¿Seguro que desea eliminar al usuario?',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: size.height * 0.05,
                                    ),
                                    Text('Eliminar al usuario es una acción permanente')
                                  ],

                                ),
                                Column(

                                ),
                              ],
                            ),
                          IconButton(
                              onPressed: (){
                                setState(() {
                                  muestraAlert=false;
                                });
                              },
                              icon: Icon(Icons.close),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
