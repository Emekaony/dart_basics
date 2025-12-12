import "dart:convert";
import "package:http/http.dart" as http;

Future<void> main() async {
  ImageModel.getImages();
}

class ImageModel {
  static String imageUrl = "https://pixelford.com/api2/images";

  static Future<void> getImages() async {
    final Uri endpoint = Uri.parse(imageUrl);
    final response = await http.get(endpoint);

    if (response.statusCode == 200) {
      print("successiful api call");
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      jsonResponse.forEach(print);
    }
  }
}
