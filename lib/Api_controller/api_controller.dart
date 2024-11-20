import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../api_madal/api_modal.dart';
import '../data/data.dart';



class VideoController extends GetxController {
  VideoModal? modal;

  VideoPlayerController? controllerVideo;

  VideoController() {
    fromMap();
  }

  Future<void> fromMap() async {
    try {
      final data = myMap;
      modal = VideoModal.fromMap(data);
      print(
          '${modal!.categories.length}=-----------------------------------------------------------------------');
    } catch (e) {
      print(
          'Error : ${e} -----------------------------------------------------------');
    }
  }

  void getVideoData(VideoPlayerController controller) {
    controllerVideo = controller;
  }
}
