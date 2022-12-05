import 'package:flutter/material.dart';
import 'package:sgr_application1/widgets/widget_drawer.dart';

class HelpPage extends StatefulWidget {
  static String id = 'help_page';

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: const Text('Ayuda'),
        ),
        drawer: MenuLateral(),
        // bottomNavigationBar: BNavigator(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(children: <Widget>[
              Text(
                  "El propósito de esta aplicación móvil es dar a conocer a sus clientes todos los platillos que se encuentren disponibles y a través de las misma app poder hacer un pedido a domicilio."),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                    child: Column(
                  children: [
                    Text(
                      "La aplicación está formada con los siguientes puntos:",
                      style: TextStyle(fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          child: Column(
                        children: [
                          Text(
                              "Al entrar a la aplicación, mientras carga aparecerá un logo del Restaurante"),
                          Image.asset("help/load.png"),
                        ],
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          child: Column(
                        children: [
                          Text(
                              "La app cuenta con un navegador que facilita el uso de la misma."),
                          Image.asset("help/nav.png"),
                        ],
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          child: Column(
                        children: [
                          Text(
                              "Como primera opción del navegador (Menú), te dirigira a la siguiente vista en donde veras los platillos disponibles."),
                          Image.asset("help/home.png"),
                          Text(
                              "\nPodrás elegir el platillo que prefieras dandole click al botón (Ordenar) y esta es una vista en donde detalladamente se te mostrará la descripción del platillo con otro botón (Carrito de compras)."),
                          Image.asset("help/desc1.png"),
                          Image.asset("help/desc2.png"),
                          Text(
                              "\nAl precionar el botón te enviara al llenado de un formulario validado para realizar tu pedido (PRESTA ATENCIÓN A LAS INSTRUCCIONES)"),
                          Image.asset("help/buyForm.png"),
                          Text(
                              "Dale click al botón e inmediatamente se te enviara una notificación con la respuesta a tu petición (Si todo está bien o su hubo un error).")
                        ],
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          child: Column(
                        children: [
                          Text(
                              "Como segunda opción del navegador (Acerca de Nosotros), te enviará a la siguiente vista en donde verás información del Restaurante como, HORARIOS, TELEFONO, UBICACIÓN, REDES SOCIALES y un formulario de contacto"),
                          Image.asset("help/info1.png"),
                          Image.asset("help/info2.png"),
                          Image.asset("help/contactForm.png")
                        ],
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          child: Column(
                        children: [
                          Text(
                              "Como tercera opción del navegador (Ayuda), te enviará a la siguiente vista que es donde te encuentras. Un listado de todo lo que hace la aplicación."),
                          Image.asset("help/help.png")
                        ],
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                                "\nComo cuarta opción del navegador (Información app), te enviará a una vista en dondé se mostrara a los desarrolladores."),
                            Image.asset("help/autor1.png"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Column(
                        children: [
                          Text(
                            "Es un placer tener como usuario, gracias por tu visita a la aplicación SGR",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                    )
                  ],
                )),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
