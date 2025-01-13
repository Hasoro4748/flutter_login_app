import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/custom_text_form_field.dart';
import 'package:flutter_login_app/size.dart';

class CustomForm extends StatelessWidget {
  // 1. 글로벌 키 선언 - 폼 상태를 관리하기 위한 key
  final _formKey = GlobalKey<FormState>();
  // 2. 사용자가 입력을 한 데이터를 저장하는 멤버 변수 선언
  String _email = '';
  String _password = '';

  CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            'Email',
            (value) {
              _email = value ?? '';
            },
          ),
          SizedBox(height: mediumGap),
          CustomTextFormField(
            'Password',
            (value) {
              _password = value ?? '';
            },
          ),
          SizedBox(height: largeGap),
          TextButton(
            onPressed: () {
              //유효성 검사
              if (_formKey.currentState!.validate()) {
                // 유효성 검사 통과
                // save() 메서드 호출
                // 통신요청
                // 로깅 확인
                print('Email : ${_email}');
                print('Password : ${_password}');

                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}
