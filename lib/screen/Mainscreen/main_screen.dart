import 'package:flutter/material.dart';
import '../homepage/home_page.dart';
import '../secondscreen/secondscreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'All Folders',
            style: TextStyle(color: Colors.white),
          ),
          actions: const [
            Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.select_all,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 25,
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildListTile('All Photos'),
              buildListTile('Camera'),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      ),
                    );
                  },
                  child: buildListTile('Cartoons')),
              buildListTile('Screen Shorts'),
              buildListTile('WhatsApp Img'),
              GestureDetector(onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CartoonScreen(),
                  ),
                );

              },child: buildListTile('Reels')),
              buildListTile('Album'),
              buildListTile('Screen Record'),
              buildListTile('Instagram'),
              buildListTile('Favorites'),
              buildListTile('Snapchat'),
              buildListTile('Download'),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(String title) {
    return ListTile(
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.white60,
        size: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white70),
      ),
      leading: Icon(
        Icons.folder_copy_sharp,
        size: 25,
        color: Colors.white60,
      ),
    );
  }
}
