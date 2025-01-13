import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/custom_form.dart';
import 'package:flutter_login_app/components/logo.dart';
import 'package:flutter_login_app/pages/home_page.dart';
import 'package:flutter_login_app/pages/login_page.dart';
import 'package:flutter_login_app/size.dart';

// 텍스트 필드와 form 위젯 만들어 보기
// 테스트 코드 작업
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            minimumSize: Size(400, 60),
          ),
        ),
      ),
      initialRoute: '/login',
      // 앱에서 사용할 화면을 설정한다.
      // map 리터럴은 중괄호로 표현, 배열은 []
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
      home: SafeArea(
          child: Scaffold(
        body: LoginPage(),
      )),
    );
  }
}
