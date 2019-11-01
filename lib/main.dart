import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peminjaman',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        buttonColor: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peminjaman"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Di harap mengembalikan buku sesuai jadwalnya",
                style: TextStyle(color: Colors.red, fontSize: 13.0),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "FORM PEMINJAMAN",
                  style: TextStyle(color: Colors.grey, fontSize: 24.0),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Nama",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              TextField(
                onChanged: (value) {},
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Alamat",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              TextField(
                onChanged: (value) {},
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "No. telp",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              TextField(
                onChanged: (value) {},
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Email",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              TextField(
                  onChanged: (value) {},
                  keyboardType: TextInputType.emailAddress),
              SizedBox(
                height: 10,
              ),
              Text(
                "Jenis Kelamin",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              TextField(
                onChanged: (value) {},
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "NIK",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              TextField(
                onChanged: (value) {},
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    onPressed: () {
                       _datePicker();
                    },
                    textColor: Colors.white,
                    child:
                        Text("Tanggal Pinjam", style: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    onPressed: () {
                      _datePicker();
                    },
                    textColor: Colors.white,
                    child:
                        Text("Tanggal Kembali", style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 300,
                  child: RaisedButton(
                    onPressed: () {
                     
                    },
                    textColor: Colors.white,
                    child: Text("Lanjut Verfikasi",
                        style: TextStyle(fontSize: 14)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((data) {
      setState(() {
      });
    });
  }
}
