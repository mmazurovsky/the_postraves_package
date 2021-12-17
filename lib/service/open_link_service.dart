import 'dart:developer';

import 'package:the_postraves_package/errors/exceptions.dart';

import 'social_links_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenLinkService {
  static void openUrl(String urlString) async {
    if (await canLaunch(urlString)) {
      await launch(urlString);
    } else if (await canLaunch('https://$urlString')) {
      await launch('https://$urlString');
    } else {
      final message = 'Could not launch $urlString';
      log(message);
      throw MyOpenLinkException(message);
    }
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
    openUrl(
      SocialLinksHelper.getSoundcloudLinkForNickname(soundcloudUsername),
    );
  }

  static void openTelegramOrEmail(String telegramUsername, String email) async {
    final telegramAppLink = "tg://msg?text=&to=@$telegramUsername";
    final emailLink = "mailto:$email";
    await canLaunch(telegramAppLink)
        ? await launch(telegramAppLink)
        : await launch(emailLink);
  }
}
