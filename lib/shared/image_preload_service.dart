import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagePreloadService extends GetxService {
  @override
  Future<ImagePreloadService> onInit() async {
    super.onInit();
    return this;
  }

  Future<void> preloadImages(
      BuildContext context, List<String> imgPaths) async {
    for (var imgPath in imgPaths) {
      ImageProvider imageProvider;

      if (imgPath.startsWith('http')) {
        imageProvider = NetworkImage(imgPath);
      } else {
        imageProvider = AssetImage(imgPath);
      }

      await precacheImage(imageProvider, context);
    }
  }
}
