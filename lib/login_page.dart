import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _bottomNavigationBar() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('계정이 없으신가요?'),
          SizedBox(width: 5),
          Text('로그인', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://blog.kakaocdn.net/dn/b5QczF/btrehC6dzmX/7VS9KZZIkBlYV2GKnuUGCK/img.png',
                width: 200,
                height: 60,
                fit: BoxFit.fill,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 30, 15, 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '전화번호, 사용자 이름 또는 이메일',
                    contentPadding: EdgeInsets.fromLTRB(10, 15, 0, 15),
                    isCollapsed: true,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 5, 15, 30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '비밀번호',
                    contentPadding: EdgeInsets.fromLTRB(10, 15, 0, 15),
                    isCollapsed: true,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('로그인'),
              ),
              const Text('또는'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '페이스북으로 계속하기',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const Text('비밀번호를 잊으셨나요?'),
              _bottomNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}
