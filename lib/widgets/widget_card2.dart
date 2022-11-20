import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/detail.dart';

class Card2 extends StatelessWidget {
  // const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(5),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: <Widget>[
              FadeInImage(
                // En esta propiedad colocamos la imagen a descargar
                image: AssetImage('assets/mole.png'),

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
                title: Text('Mole poblano'),
                subtitle: Text('PRECIO: 85 pesos '),
                leading: Icon(Icons.local_grocery_store_sharp),
              ),

              // Usamos una fila para ordenar los botones del card
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DetailPage()))
                    },
                    child: Text('Ordenar',
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900)),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
