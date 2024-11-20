import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Api_controller/api_controller.dart';
import '../play_page/play_page.dart';

bool isPage = false;

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var videoController = Get.put(VideoController());
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
      body: (videoController.modal!.categories[0].videos.isEmpty)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: videoController.modal!.categories[0].videos.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      ListTileTheme(
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
                            width: 45,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.values.first,
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(videoController
                                    .modal!.categories[0].videos[index].thumb),
                              ),
                            ),
                          ),
                          titleTextStyle:
                              TextStyle(color: Colors.white70, fontSize: 15),
                          title: Text(videoController
                              .modal!.categories[0].videos[index].title),
                          onTap: () {
                            String url = videoController
                                .modal!.categories[0].videos[index].sources[0];
                            isPage = false;
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
                    ],
                  ),
                );
              },
            ),
    );
  }
}
