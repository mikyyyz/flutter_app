import 'package:flutter/material.dart';
import 'package:flutter_app/route.dart';
import 'package:flutter_app/chat/ui/theme.dart';
import 'package:get/get.dart';

void main() => {
  //WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized()
  runApp(const MyApp())
};

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '社区交友APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: ChatTheme.primary,
          titleTextStyle: TextStyle(
            color: ChatTheme.textWhite,
            fontSize: ChatTheme.titleBase,
            fontWeight: FontWeight.w500
          ),
          iconTheme: IconThemeData(
            color: ChatTheme.base,
            size: ChatTheme.titleBase
          ),
        ),
        primaryColor: ChatTheme.primary,
        splashColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          background: Colors.transparent
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: ChatTheme.fontSizeBase)
        ),
        highlightColor: Colors.transparent,
        // text点击波纹
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            textStyle: MaterialStateProperty.all(
              TextStyle(color: ChatTheme.primary)
            )
          )
        )
      ),
      getPages: getRoutes,
      initialRoute: '/home'
    );
  }
}
