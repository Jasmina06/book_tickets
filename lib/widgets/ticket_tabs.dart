import 'package:fluent_ui/fluent_ui.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context); // Corrected to get the size of the screen
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 50)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            // Airline tickets
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(context, 7),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(context, 50)),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            // Hotels
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(context, 7),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(context, 50)),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
