import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImputPage extends StatelessWidget {
  const ImputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Imput page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Nombre completo",
                helperStyle: TextStyle(
                  color: Colors.blue,
                ),
                label: Text("Nombre completo"),
                icon: Icon(Icons.check_box_rounded),
                suffixIcon: Icon(Icons.location_city_rounded),
                prefixIcon: Icon(Icons.abc),
              ),
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              maxLines: 1,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "buscar productos",
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 5.0,
                  ),
                ),
              ),
              onChanged: (String value) {
                print(value);
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "buscar producto",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14.0,
                    color: Colors.black38,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Container(
                    margin: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
