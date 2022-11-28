import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/detail1.dart';

class Card1 extends StatelessWidget {
  //const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(5),
        elevation: 5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: <Widget>[
              FadeInImage(
                // En esta propiedad colocamos la imagen a descargar
                image: AssetImage('assets/salmon.png'),

                //AÑADIR IMAGEN DESDE LA WEB
                /* image: NetworkImage(
                    'https://staticuestudio.blob.core.windows.net/buhomag/2016/03/01195417/pexels-com.jpg'),
                */

                // En esta propiedad colocamos el gif o imagen de carga
                // debe estar almacenado localmente
                placeholder: AssetImage('assets/loading.gif'),

                // En esta propiedad colocamos mediante el objeto BoxFit
                // la forma de acoplar la imagen en su contenedor
                fit: BoxFit.cover,

                // En esta propiedad colocamos el alto de nuestra imagen
                height: 200,
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                title: Text('Salmón a la plancha con verduras'),
                subtitle: Text('PRECIO: 700 pesos'),
                leading: Icon(Icons.local_grocery_store_sharp),
              ),

              // Usamos una fila para ordenar los botones del card
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[600]),
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detail1Page()))
                    },
                    child: Text('Ordenar',
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
