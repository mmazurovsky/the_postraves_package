import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/related_to_place/scene.dart';

part 'scene_internal.freezed.dart';

@freezed
class SceneInternal with _$SceneInternal {
  const SceneInternal._();
  const factory SceneInternal({
    String? imageLink,
    int? id,
    String? internalId,
    required String name,
  }) = _SceneInternal;

  Scene toScene() {
    return Scene(
      id: id,
      name: name,
      imageLink: imageLink,
    );
  }

  static fromScene(Scene scene) {
    return SceneInternal(
      id: scene.id,
      name: scene.name,
      imageLink: scene.imageLink,
    );
  }
}
