import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Cards Page 2"),
      ),
      body: Column(
        children: [
//card 1
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  offset: Offset(-1, -1),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/woman.png"),
              ),
              title: ListTile(
                title: Text(
                  "Jhonn Doe",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Ceo at Apple Inc. ",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                trailing: Icon(
                  Icons.settings_applications,
                  color: Colors.indigo,
                ),
              ),
            ),
          ),
//card 2

          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  offset: Offset(-1, -1),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/frasco.png"),
              ),
              title: ListTile(
                title: Text(
                  "The quick, brown fox jumps over",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ),
            ),
          ),

//card 3

          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(18.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  offset: Offset(-1, -1),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  child: ListTile(
                    title: ListTile(
                      title: Text(
                        "The quick, brown fox jumps over",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Image.asset(
                        "assets/images/on.png",
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 400.0,
                  height: 1.0,
                  color: Colors.grey,
                ),
                Container(
                  child: ListTile(
                    title: ListTile(
                      title: Text(
                        "The quick, brown fox jumps over",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Image.asset(
                        "assets/images/off.png",
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
