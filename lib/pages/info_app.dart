import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/home.dart';

import '../widgets/widget_drawer.dart';

class Info_app extends StatefulWidget {
  static String id = 'info_app';

  @override
  State<Info_app> createState() => _Info_appState();
}

class _Info_appState extends State<Info_app> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title:
              Text('Derechos de Autor', style: TextStyle(color: Colors.white)),
        ),
        drawer: MenuLateral(),
        body: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text("Esta aplicación móvil, fue desarrollada por: ",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal)),
            ),
          ),
          Text("\n"),
          Column(
            children: [
              Text(
                " - T.S.U VÍCTOR MANUEL TAMAYO BRIONES",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 120,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent-qro1-2.xx.fbcdn.net/v/t1.6435-9/149908279_2300218780123084_4685272588465834562_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_eui2=AeG29266GjmqHeYa7CgkaLAt4cIF47X3JOvhwgXjtfck60-9RfmRKuB4ZycT96vTn3p0Ly5Z8WVHDrpQbjdZepTe&_nc_ohc=DBAgjJvr55wAX_YI6eP&_nc_ht=scontent-qro1-2.xx&oh=00_AfA3g5ITuRxrn2Sdpo7rFlcY9kg3O3g9NciP-Eg5ed72-w&oe=63B244FF"),
                    radius: 120,
                  ),
                ),
              ),
              Text(
                "\n - T.S.U YESSYCA GARCIA CAMPOS",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 120,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent-qro1-2.xx.fbcdn.net/v/t39.30808-6/311912243_859448342094953_1409539188048918942_n.jpg?stp=c0.23.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeGA4R3UNQUDJ-Znk5f0teucc6DQeqZN7IJzoNB6pk3sgrYfxaEWc-4_vbi9-jErxgBJPTsyyh742CK63vrP9yev&_nc_ohc=266faUC9LVEAX_nYkHU&_nc_ht=scontent-qro1-2.xx&oh=00_AfBLJOpbWtWNUjVHoxoYMckJW3QzaR868CYeu9AwTAfwGQ&oe=638F1D6B"),
                    radius: 120,
                  ),
                ),
              ),
              Text(
                "\n - T.S.U DULCE CONCEPCIÓN JUAREZ SOLEDAD",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 120,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent-qro1-2.xx.fbcdn.net/v/t1.6435-9/193214637_2926346684278779_3287568855833745487_n.jpg?stp=dst-jpg_p206x206&_nc_cat=103&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeG441WBjw0UlrX6KvjFDClXWRmAfxLZ73tZGYB_Etnve5oVqZ-QDeyKCHbME-0849M41rS-DAF6byQDam3Hv2TG&_nc_ohc=IpH57M470egAX_dc187&_nc_ht=scontent-qro1-2.xx&oh=00_AfD_0Y9PN4GZioLWfKxbJrgCUdCjI6FtqTX8iVh0eS8whw&oe=63B23ED3"),
                    radius: 120,
                  ),
                ),
              ),
              Text(
                "\n - T.S.U JOSÉ RAMÓN HERNÁNDEZ MUÑOZ",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 120,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent-qro1-2.xx.fbcdn.net/v/t1.6435-9/118525549_3187719484645126_7079414497325955037_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFxPJYu0Fr05hSl9HSYpqx-IGglPS6A1OUgaCU9LoDU5VMekJ8-5MIMtqQD1IfEp6sD8d01-l51UU7bZweABT4L&_nc_ohc=mwcrEoz7-QcAX8WH8T6&_nc_ht=scontent-qro1-2.xx&oh=00_AfBBqYmZzVOjs-XSU9X8SnXluMy6_fkt1ZrvaL0c-Bt1Nw&oe=63B25993"),
                    radius: 120,
                  ),
                  //CircleAvatar
                ),
              ),
            ],
          ),

          Text("\n"),
          Container(
            child: Center(
              child: Text(
                  "Alumnos de la Universidad Tecnológica de Tlaxcala en la carrera Ingeniería en Desarrollo y Gestión de Software\n",
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.justify),
            ),
          ),
          //Text("\n"),
          Image.asset("assets/logoUTT.png")
        ]),
      ),
    );
  }
}
