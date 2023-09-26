import 'package:app_complete2/home.dart';
import 'package:app_complete2/utils/constantes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final user = TextEditingController();
  final pass = TextEditingController();
  final email = TextEditingController();
  bool _validateUser = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.yellow,
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
                      Text('Login',
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
                        //topRight: Radius.circular(20.0),
                        //bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(100.0),
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
                            TextFormField(
                              controller: user,
                              obscureText: false,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(color: Colors.red,
                                      width: 1,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: amarillo,
                                  hintText: 'Usuario',
                                  errorText: _validateUser ? 'Debe de escribir su usuario' : null

                              ),
                              onChanged: (texto)
                              {
                                if(texto.trim().isNotEmpty)
                                {
                                  _validateUser = false;
                                }
                              },
                            ),

                            SizedBox(
                              height: size.height * 0.05,
                            ),

                            //const label(texto: 'Ingresa la contraseña',),
                            TextFormField(
                              controller: pass,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(color: Colors.blue,
                                    width: 1,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                fillColor: amarillo,
                                hintText: 'Contraseña',
                                //errorText: _validateUser ? 'Debe de escribir su contraseña' : null
                              ),
                            ),

                            SizedBox(
                              height: size.height * 0.05,
                            ),

                            //const label(texto: 'Ingresa el correo',),
                            TextFormField(
                              controller: email,
                              obscureText: false,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),

                                  ),
                                  filled: true,
                                  fillColor: amarillo,
                                  hintText: 'Correo'
                                //errorText: _validateUser ? 'Debe de escribir su correo' : null
                              ),
                            ),


                            SizedBox(
                              height: size.height * 0.20,
                            ),
                          ],
                        ),
                    ),


                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            fixedSize: Size(size.width * 0.5, 45),
                            backgroundColor: morado,
                          ),
                          onPressed: (){
                            setState(() {
                              user.text.isNotEmpty ?
                              _validateUser = false : _validateUser = true;
                              /*
                              * user.text.isNotEmpty && user.text == 'usuario'
                                  && pass.text.isNotEmpty && pass.text == 'contraseña'
                                  && email.text.isNotEmpty && email.text == 'user@gmail.com'*/
                              if(user.text.isNotEmpty && user.text == 'usuario'
                                  && pass.text.isNotEmpty && pass.text == 'contraseña'
                                  && email.text.isNotEmpty && email.text == 'user@gmail.com' && validaCorreo(email.text) == '1')
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const home()),);
                              }
                              else
                              {
                                //_validateUser = true;
                              }
                            });
                          },
                          child: const Text('Ingresar',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),)
                      )
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
  String validaCorreo(String email){
    Pattern pattern = ''r'\S+@\S+\.\S+';
    RegExp regExp = RegExp(pattern.toString());
    if(regExp.hasMatch(email))
    {
    return '1'; //Email concuerda con nuestra expresion regular
    }
    else{
    return '0'; //Email no concuerda con nuestra expresion regular
    }
  }
}


class label extends StatelessWidget {
  final String texto;
  const label({
    super.key,
    required this.texto
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: const EdgeInsets.only(left: 25),
          child: Text(texto,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),),
        )
      ],
    );
  }
}
