import 'package:fluent_ui/fluent_ui.dart';

class AppLayout {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getHeight(BuildContext context, double pixels) {
    return (pixels / 812.0) * MediaQuery.of(context).size.height; // Assuming standard device height
  }

  static double getWidth(BuildContext context, double pixels) {
    return (pixels / 375.0) * MediaQuery.of(context).size.width; // Assuming standard device width
  }
}
