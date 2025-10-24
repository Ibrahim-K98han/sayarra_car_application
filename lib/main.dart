import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayarra_car_application/routes/route_names.dart';
import 'package:sayarra_car_application/utils/constraints.dart';
import 'package:sayarra_car_application/utils/k_string.dart';
import 'package:sayarra_car_application/widgets/custom_theme.dart';
import 'package:sayarra_car_application/widgets/fetch_error_text.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390.0, 812.0),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (BuildContext context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: KString.appName,
          initialRoute: RouteNames.splashScreen,
          onGenerateRoute: RouteNames.generateRoutes,
          onUnknownRoute: (RouteSettings settings) {
            return MaterialPageRoute(
              builder: (_) => Scaffold(
                body: FetchErrorText(
                  text: 'No route defined for ${settings.name}',
                  textColor: redColor,
                ),
              ),
            );
          },
          theme: MyTheme.theme,
        );
      },
    );
  
  }
}

