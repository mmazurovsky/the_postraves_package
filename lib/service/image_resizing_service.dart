import 'dart:html';
import 'dart:typed_data';
import 'package:image/image.dart' as IMG;
import 'dart:io' as IO;

import 'package:image/image.dart';

class ImageResizingService {
  static const int resizeTo = 1200;

  static Uint8List resizeImage(Uint8List data) {
    IMG.Image initialImage = IMG.decodeImage(data)!;

    IMG.Image resized = initialImage;

    if (initialImage.height > resizeTo) {
      resized = IMG.copyResize(
        initialImage,
        height: resizeTo,
        interpolation: Interpolation.linear,
      );
    } else if (initialImage.width > resizeTo) {
      resized = IMG.copyResize(initialImage, width: resizeTo);
    }
    final resizedData = IMG.encodeJpg(resized, quality: 80);
    return Uint8List.fromList(resizedData);
  }

  static Uint8List resizeFileImage(IO.File file) {
    return resizeImage(file.readAsBytesSync());
  }
}
