import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../utils/drawermenu.dart';
import '../utils/navigationbar.dart';
import 'creditsview.dart';

/// Clase MyInstagram, contiene todos los elementos del layout de instagram
class MyInstagram extends StatelessWidget {
  const MyInstagram.MyInstagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /**
       * Llamo al drawer
       */
        endDrawer: const DrawerMenu(),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(251, 252, 252, 50),
          title: const Center(
            child: Text(
              'trendencias',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.bold),
            ),
          ),
          /**
           * Boton que al pulsarlo te dirige a los creditos
           */
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Fin()),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black, // add custom icons also
            ),
          ),
          actions: <Widget>[
            Builder(
              builder: (context) => Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: IconButton(
                      color: Colors.black,
                      icon: const Icon(
                        Icons.more_horiz,
                      ),
                      onPressed: () => Scaffold.of(context).openEndDrawer(),
                    ),
                  )),
            ),
          ],
        ),
        /**
         * Llamo al navigatonBar para que se muestre en la app
         */
        bottomNavigationBar: const Navigation(),
        body:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Expanded(
            child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                      width: 392,
                      height: 135,
                      child: Column(
                        children: [
                          Row(children: [
                            Container(
                              width: 140,
                              height: 135,
                              alignment: Alignment.center,
                              child: Container(
                                width: 110,
                                height: 110,
                                /**
                                 * Para que se muestre el circulo gris simulando a la historia de instagram
                                 */
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: const Color.fromRGBO(
                                          199, 199, 199, 100)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Container(
                                    /**
                                     * Para que se vea la imagen en un circulo
                                     */
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "./assets/images/trendencias.jpg")),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Column(children: const [
                                        Text("3.530",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          "publicaciones",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'NotoSansJP',
                                              fontSize: 14),
                                        )
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Column(children: const [
                                        Text("53,4 mil",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          "seguidores",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'NotoSansJP',
                                              fontSize: 14),
                                        )
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Column(children: const [
                                        Text("192",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          "seguidos",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'NotoSansJP',
                                              fontSize: 14),
                                        )
                                      ]),
                                    ),
                                  ],
                                ),
                                Row(children: [
                                  MaterialButton(
                                    padding: const EdgeInsets.all(5),
                                    minWidth: 130.0,
                                    height: 30.0,
                                    onPressed: () {},
                                    color: Colors.white,
                                    child: const Text(
                                      'Enviar mensaje',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  MaterialButton(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    minWidth: 0,
                                    height: 30,
                                    color: Colors.white,
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.person_add_alt_1,
                                      size: 25,
                                    ),
                                  ),
                                  MaterialButton(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    minWidth: 0,
                                    height: 30,
                                    color: Colors.white,
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.arrow_drop_down,
                                      size: 30,
                                    ),
                                  )
                                ]),
                              ],
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ]),
                  /**
                   * Widget con el texto de la view
                   */
                  SizedBox(
                    height: 140,
                    child: Column(
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Trendencias",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Sitio web de noticias y medios de comunicación",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontFamily: 'NotoSansJP'),
                              ),
                              Text(
                                "Moda. Belleza. Street Style. Compras. Celebrities."
                                "\nAlfombras Rojas. Feminismo.",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "iglink.co/Trendencias"
                                "\nCalle Jenner 3, 3º, Madrid, Spain",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.blue),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 392,
                    height: 130,
                    /**
                     * Lista de historias infinitas
                     */
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              199, 199, 199, 100)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      // border width
                                      child: Container(
                                        // or ClipRRect if you need to clip the content
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "./assets/images/pict1.jpg")),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text('Shopping'),
                                  )
                                ]),
                          ),
                          Container(
                            padding: const EdgeInsets.all(6),
                            alignment: Alignment.center,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              199, 199, 199, 100)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      // border width
                                      child: Container(
                                        // or ClipRRect if you need to clip the content
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "./assets/images/pict2.jpg")),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text('StreetStyle'),
                                  )
                                ]),
                          ),
                          Container(
                            padding: const EdgeInsets.all(6),
                            alignment: Alignment.center,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              199, 199, 199, 100)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      // border width
                                      child: Container(
                                        // or ClipRRect if you need to clip the content
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "./assets/images/pict3.jpg")),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text('Zara'),
                                  )
                                ]),
                          ),
                          Container(
                            padding: const EdgeInsets.all(6),
                            alignment: Alignment.center,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              199, 199, 199, 100)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      // border width
                                      child: Container(
                                        // or ClipRRect if you need to clip the content
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "./assets/images/pict4.jpg")),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text('Celebreties'),
                                  )
                                ]),
                          ),
                          Container(
                            padding: const EdgeInsets.all(6),
                            alignment: Alignment.center,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              199, 199, 199, 100)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      // border width
                                      child: Container(
                                        // or ClipRRect if you need to clip the content
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "./assets/images/pict5.jpg")),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text('Belleza'),
                                  )
                                ]),
                          ),
                          Container(
                            padding: const EdgeInsets.all(6),
                            alignment: Alignment.center,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              199, 199, 199, 100)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      // border width
                                      child: Container(
                                        // or ClipRRect if you need to clip the content
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "./assets/images/pict6.jpg")),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text('Feminismo'),
                                  )
                                ]),
                          ),
                        ]),
                  ),
                  Row(children: [
                    MaterialButton(
                      padding: const EdgeInsets.all(5),
                      height: 50,
                      minWidth: 196,
                      onPressed: () {},
                      child: const Text(
                        'Enviar correo electrónico',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NotoSansJP'),
                      ),
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.all(5),
                      height: 50,
                      minWidth: 196,
                      onPressed: () {
                        launchUrlString(
                            'https://www.google.com/search?client=opera&q=Calle+Jenner+3%2C+3º%2C+Madrid%2C+Spain&sourceid=opera&ie=UTF-8&oe=UTF-8');
                      },
                      child: const Text(
                        'Cómo llegar',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NotoSansJP'),
                      ),
                    ),
                  ]),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(50, 0, 0, 10),
                        child: IconButton(
                          icon: const Icon(Icons.apps,
                              color: Colors.blue, size: 38),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(75, 0, 75, 10),
                        child: IconButton(
                          icon: const Icon(Icons.amp_stories_outlined,
                              color: Colors.grey, size: 38),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: IconButton(
                          icon: const Icon(Icons.account_box_outlined,
                              color: Colors.grey, size: 38),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                    child: Image.asset(
                      './assets/images/shopping4.jpg',
                      width: 129,
                      height: 130,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 0, 2, 1),
                    child: Image.asset(
                      './assets/images/shopping5.jpg',
                      width: 129,
                      height: 130,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                    child: Image.asset(
                      './assets/images/shopping7.jpg',
                      width: 129,
                      height: 130,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                    child: Image.asset(
                      './assets/images/shopping2.jpg',
                      width: 129,
                      height: 130,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 0, 2, 1),
                    child: Image.asset(
                      './assets/images/shopping3.jpg',
                      width: 129,
                      height: 130,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                    child: Image.asset(
                      './assets/images/shopping6.jpg',
                      width: 129,
                      height: 130,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                    child: Image.asset(
                      './assets/images/shopping1.jpg',
                      width: 129,
                      height: 130,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 0, 2, 1),
                    child: Image.asset(
                      './assets/images/shopping8.jpg',
                      width: 129,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ]),
          )
        ]));
  }
}
