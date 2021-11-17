import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import 'package:the_postraves_package/models/write/artist_write.dart';

abstract class WriteClientHelper<WRITEDATA extends WriteInterface> {
  String getEndpoint();
}

class ArtistWriteClientHelper implements WriteClientHelper<ArtistWrite> {
  @override
  String getEndpoint() {
    return FollowableType.ARTIST.endpoint;
  }
}
