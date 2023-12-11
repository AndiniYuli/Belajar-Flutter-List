import 'package:flutter/material.dart';
import 'package:flutterlist/userdata.dart';
import 'package:flutterlist/useritem.dart';
import 'dart:developer';

class UserList extends StatefulWidget {
  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  TextEditingController Nama = TextEditingController();

  TextEditingController Umur = TextEditingController();

  TextEditingController Email = TextEditingController();

  List<UserData> daftarUser = [
    UserData("Idris", 34, "idrez.mochamad@gmail.com"),
    UserData("Adi", 24, "adi@gmail.com"),
    UserData("Rizal", 33, "rizal.mochamad@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: TextField(
                  controller: Nama,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Nama",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: TextField(
                  controller: Umur,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Umur",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: TextField(
                  controller: Email,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    daftarUser.add(
                        UserData(Nama.text, int.parse(Umur.text), Email.text));
                    setState(() {
                      UserData;
                    });
                    inspect(daftarUser);
                  },
                  child: Text("Simpan"),
                  style: ElevatedButton.styleFrom(minimumSize: Size(150, 75)),
                ),
              ),
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return UserItem(daftarUser[index]);
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: daftarUser.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
