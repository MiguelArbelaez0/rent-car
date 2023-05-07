import 'package:url_launcher/url_launcher.dart';

class SendWhatsAppUseCase {
  Future<void> sendWhatsAppMessage(String message, String phoneNumber) async {
    final formattedPhoneNumber = '+57$phoneNumber';
    final url =
        'https://wa.me/$formattedPhoneNumber?text=${Uri.encodeFull(message)}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace de WhatsApp.';
    }
  }
}
