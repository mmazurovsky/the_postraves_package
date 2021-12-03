import 'package:the_postraves_package/errors/exceptions.dart';

import 'social_links_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenLinkService {
  static void openUrl(String urlString) async {
    await canLaunch(urlString)
        ? await launch(urlString)
        : await canLaunch('https://$urlString')
            ? await launch('https://$urlString')
            : throw MyOpenLinkException('Could not launch $urlString');
  }

  static void openInstagram(String instagramUsername) async {
    final instagramAppLink = "instagram://user?username=$instagramUsername";
    final isLaunched = await launch(instagramAppLink);
    if (!isLaunched) {
      openUrl(
        SocialLinksHelper.getInstagramLinkForNickname(instagramUsername),
      );
    }
  }

  static void openSoundcloud(String soundcloudUsername) async {

    //* not working, link is opened in app store or in safari on sc site
    // final soundcloudAppLink =
    //     "https://soundcloud.app.goo.gl/?link=https%3A%2F%2Fsoundcloud.com%2F$soundcloudUsername&apn=com.soundcloud.android&ibi=com.soundcloud.TouchApp&isi=336353151&efr=1";
    // final isLaunched = await launch(soundcloudAppLink);
    // if (!isLaunched) {
      openUrl(
        SocialLinksHelper.getSoundcloudLinkForNickname(soundcloudUsername),
      );
    // }
  }

  static void openTelegram(String telegramUsername) async {
    final telegramAppLink = "tg://msg?text=&to=@$telegramUsername";
    final isLaunched = await launch(telegramAppLink);
    if (!isLaunched) {
      openUrl(
        SocialLinksHelper.getTelegramLinkForNickname(telegramUsername),
      );
    }
  }
}
