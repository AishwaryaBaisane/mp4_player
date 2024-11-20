import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../homepage/home_page.dart';
import '../play_page/play_page.dart';

List videos = [
  {
    'title': 'Video 1',
    'url': 'assets/video/vid.mp4',
  },
  {
    'title': 'Video 2',
    'url': 'assets/video/vid2.mp4',
  },
  {
    'title': 'Video 3',
    'url': 'assets/video/vid4.mp4',
  },
  {
    'title': 'Video 4',
    'url': 'assets/video/vid5.mp4',
  },
  {
    'title': 'Video 5',
    'url': 'assets/video/vid6.mp4',
  },
  {
    'title': 'Video 6',
    'url': 'assets/video/vid7.mp4',
  },
  {
    'title': 'Video 7',
    'url': 'assets/video/vid8.mp4',
  },
  {
    'title': 'Video 8',
    'url': 'assets/video/vid9.mp4',
  },
  {
    'title': 'Video 9',
    'url': 'assets/video/vid12.mp4',
  },
  {
    'title': 'Video 10',
    'url': 'assets/video/vid14.mp4',
  },
  {
    'title': 'Video 11',
    'url': 'assets/video/vid16.mp4',
  },
  {
    'title': 'Video 12',
    'url': 'assets/video/vid20.mp4',
  },
];

class CartoonScreen extends StatelessWidget {
  const CartoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var videoController = Get.put(VideoController());
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
        title: const Text(
          'Videos',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: ListTileTheme(
              selectedColor: Colors.white60,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white24)),
              child: ListTile(
                trailing: const Icon(
                  Icons.more_vert,
                  color: Colors.white54,
                ),
                leading: Container(
                  width: 60,
                  height: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.values.first,
                    color: Colors.grey,
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/img/camera.jpg'),
                    ),
                  ),
                ),
                titleTextStyle: TextStyle(color: Colors.white70, fontSize: 15),
                title: Text(videos[index]['title']),
                onTap: () {
                  String url = videos[index]['url'];
                  isPage = true;
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Homepage1(
                        url: url,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
