import 'dart:ui';

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("AlertDialog example!!!"),
          backgroundColor: Colors.white,
          content: Text(
              "Este es un ejemplo del AlertDialog. esto es un texto de prueba"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  showMyAlert1(BuildContext context1) {
    showDialog(
      context: context1,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/block.png"),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text("Blog post published"),
            ],
          ),
          backgroundColor: Colors.white,
          content: Text(
              "This blog post has been published. Team members will be able to edit this post and republish changes."),
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancelar",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Aceptar",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  showMyAlert2(BuildContext context2) {
    showDialog(
      context: context2,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/woman.png"),
              Text("Your video has been uploades!"),
            ],
          ),
          backgroundColor: Colors.white,
          content: Text("You're video has finished uploading and is live"),
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancelar",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Aceptar",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("Alert 1"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert1(context);
              },
              child: Text("Alert 2"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: Text("Alert 3"),
            ),
          ],
        ),
      ),
    );
  }
}
