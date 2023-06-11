import 'package:event_app/app/configs/theme.dart';
import 'package:event_app/app/resources/constant/named_routes.dart';
import 'package:event_app/ui/pages/detail_page.dart';
import 'package:event_app/ui/pages/home_page.dart';
import 'package:event_app/ui/pages/ticket_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyApp1 createState() => MyApp1();
}
  // This widget is the root of your application.
class MyApp1 extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case NamedRoutes.homeScreen:
            return MaterialPageRoute(builder: (context) => HomePage());
          case NamedRoutes.detailScreen:
            return MaterialPageRoute(
              builder: (_) => DetailPage(),
              settings: settings,
            );
          case NamedRoutes.ticketScreen:
            return MaterialPageRoute(
              builder: (context) => const TicketPage(),
              settings: settings,
            );
          default:
            return MaterialPageRoute(builder: (context) => HomePage());
        }
      },
    );
  }


}