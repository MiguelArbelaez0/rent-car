import 'package:url_launcher/url_launcher.dart';

class SendWhatsAppUseCase {
  Future<void> sendWhatsAppMessage(String message, String phoneNumber) async {
    final url =
        'https://wa.link/lsh64a/3103971727?text=${Uri.encodeFull(message)}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace de WhatsApp.';
    }
  }
}
