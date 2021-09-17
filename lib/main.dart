import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'CAS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> names = [
    "Android Studio Course",
    "Flutter Development",
    "Python",
    "Unity Game Engine",
    "Artificial Intelligence",
    "Machine Learning"
  ];
  //final List<String> imageURL = ["url1","url2","url3","url4","url5","url6","url7"];
  TextStyle myTextStyle =
      TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.blue);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: <Widget>[
            myCustomTile(0),
            myCustomTile(1),
            myCustomTile(2),
            myCustomTile(3),
            myCustomTile(4),
            myCustomTile(0),
            myCustomTile(1),
            myCustomTile(2),
            myCustomTile(3),
            myCustomTile(4),
            myCustomTile(0),
            myCustomTile(1),
            myCustomTile(2),
            myCustomTile(3),
            myCustomTile(4),
          ],
        ),
      ),
    );
  }

  Widget myCustomTile(int index) {
    return Stack(
      children: <Widget>[
        Card(
            elevation: 10,
            color: Color(0xFFE0EEE0),
            child: Center(
              child: Container(
                height: 100,
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 6.0),
                      child: Text(names[index], style: myTextStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 2.0, right: 8.0, left: 8.0),
                      child: Container(
                          child: Text(
                              "ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the ListView.",
                              style: TextStyle(fontSize: 10))),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(Icons.arrow_drop_down),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: SizedBox(
                                height: 25,
                                width: 50,
                                child: MaterialButton(
                                  color: Colors.blue,
                                  onPressed: () {
                                    ScaffoldMessenger.of(context)
                                        .showMaterialBanner(MaterialBanner(
                                            content:
                                                Text('this is material banner'),
                                            actions: [
                                          MaterialButton(
                                            child: Text('OK'),
                                            onPressed: () => ScaffoldMessenger
                                                    .of(context)
                                                .hideCurrentMaterialBanner(),
                                          )
                                        ]));
                                  },
                                  child: Text(
                                    "join",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }

  Widget imageAvatar() {
    return Image.network(
        "https://lh3.googleusercontent.com/proxy/GJj_x5fePy6gUJCWDPoBkEkaH6wvCatIfqwZVduPKq8usjv3cgMFizGR4MaCJBmRj0mpz0fa6UAWsqY8JJe58hxcYJA1_6MMc2l8sTeh9sHJbTx8B9gAXE8CgsulWR9X-W3ryv43NkLpvcBA1DxHy5eX",
        fit: BoxFit.cover);
  }
}
