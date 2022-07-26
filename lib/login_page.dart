import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _bottomNavigationBar() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('계정이 없으신가요?', style: TextStyle(fontSize: 15)),
          SizedBox(width: 5),
          Text(
            '로그인',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ],
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 130.0),
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
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 5),
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
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 30),
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
                  style:
                      ElevatedButton.styleFrom(minimumSize: const Size(350, 45)),
                  child: const Text('로그인', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(width: 1, color: Colors.black38))),
                    ),
                    const SizedBox(width: 10),
                    const Text('또는', style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.bold,color: Colors.black45)),
                    const SizedBox(width: 10),
                    Container(
                      width: 150,
                      decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(width: 1, color: Colors.black38))),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
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
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('비밀번호를 잊으셨나요?', style: TextStyle(fontSize: 15, color: Colors.blue)),
                // SizedBox(height: 100),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: _bottomNavigationBar(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
