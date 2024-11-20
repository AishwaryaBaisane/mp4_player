import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp4_player/screen/homepage/home_page.dart';
import 'package:video_player/video_player.dart';

import '../../Api_controller/api_controller.dart';

class Homepage1 extends StatefulWidget {
  final String url;

  const Homepage1({required this.url, super.key});

  @override
  State<Homepage1> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage1> {
  VideoPlayerController? controller;
  var videoController = Get.put(VideoController());

  void loadUrl() {
    controller = (!isPage)
        ? VideoPlayerController.networkUrl(Uri.parse(widget.url))
        : VideoPlayerController.asset(widget.url);

    controller!.initialize().then(
      (value) {
        setState(() {});
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadUrl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chewie(
          controller: ChewieController(videoPlayerController: controller!),
        ),
      ),
    );
  }
}
