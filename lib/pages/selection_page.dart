import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  var _currentSelectedDate;
  void callDatePiker() async {
    var SelecteDate = await getDatePikerWidget();
    setState(() {
      _currentSelectedDate = SelecteDate;
    });
  }

  Future<DateTime?> getDatePikerWidget() {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2030),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Data Piker"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "fecha de nacimiento",
              ),
              onTap: () {
                callDatePiker();
              },
            ),
            Text("$_currentSelectedDate"),
          ],
        ),
      ),
    );
  }
}
