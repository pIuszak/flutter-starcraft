import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// final GoogleSignIn googleSignIn = GoogleSignIn();


 void main() async{
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.ś
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: ' --- Join Raynor\'s Raiders ---'),
      //home: GetUserName("Raynor"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String name, surname, unitType;

  getName(name) {
    this.name = name;
  }

  getSurname(surname) {
    this.surname = surname;
  }

  getUnitType(unitType) {
    this.unitType = unitType;
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Name"),
              onChanged: (String name) {
                getName(name);
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: "Surname"),
              onChanged: (String surname) {
                getSurname(surname);
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: "Unit Type"),
              onChanged: (String unitType) {
                getUnitType(unitType);
              },
            ),
            Padding(padding: EdgeInsets.all(25.0)),
            RaisedButton(color: Colors.green,
                child: Text("Create"),
                onPressed: () {
                  createData();
                }),
            RaisedButton(color: Colors.blue,
                child: Text("Read"),
                onPressed: () {
                  readData();
                }),
            RaisedButton(color: Colors.orangeAccent,
                child: Text("Update"),
                onPressed: () {
                  updateData();
                }),
            RaisedButton(color: Colors.red,
                child: Text("Delete"),
                onPressed: () {
                  deleteData();
                })

          ],
        ),
      ),


      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void createData() {
    print("createData");
  }

  void readData() {
    // print("readData");
    // DocumentReference documentReference = Firestore.instance.collection("Users")
    //     .document("Raynor");
    // documentReference.get().then((datasnapshot){
    //   print(datasnapshot.data);
    //
    // });
  }

  void updateData() {
    print("updateData");
  }

  void deleteData() {
    print("deleteData");
  }
}






