import 'dart:html';
import 'dart:typed_data';
import 'package:image/image.dart' as IMG;
import 'dart:io' as Io;

class ImageResizingService {
  static const int resizeTo = 900;

  static Uint8List resizeImage(Uint8List data) {
    IMG.Image initialImage = IMG.decodeImage(data)!;

    IMG.Image resized = initialImage;

    if (initialImage.height > resizeTo) {
      resized = IMG.copyResize(initialImage, height: resizeTo);
    } else if (initialImage.width > resizeTo) {
      resized = IMG.copyResize(initialImage, width: resizeTo);
    }
    final resizedData = IMG.encodeJpg(resized);
    return Uint8List.fromList(resizedData);
  }

  static Uint8List resizeFileImage(Io.File file) {
    return resizeImage(file.readAsBytesSync());
  }
}
