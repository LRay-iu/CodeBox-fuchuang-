/// 用户个人信息页面
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xiao_tally/components/common/page.dart';
import 'package:xiao_tally/components/navbar/nav_config.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key, required this.title});

  final String title;

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return XPage(
      title: widget.title,
      elevation: 2,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // 头像和用户名区域
            // Container(
            //   child: Container(
            //       margin: const EdgeInsets.only(left: 40, top: 40),
            //       child: const CircleAvatar(
            //         backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            //         radius: 25,
            //       ),
            //     ),
            //     // 用户名
            //         Container(
            //       margin: const EdgeInsets.only(left: 40, top: 50),
            //       child: const Text(
            //         'hi 东南dnf',
            //         style: TextStyle(fontSize: 20),
            //       ),
            //     ),

            // ),
            //设置个人主页的小组件
            const UserCard(),
            const UserCommonFunc(),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('设置'),
                    onTap: () => {context.go('/settings')},
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('退出登录'),
                    onTap: () => {context.go('/login')},
                  ),
                ],
              ),
            ),
            //检查是否登录，如果未登录则显示登录按钮
            // Container(
            //   margin: const EdgeInsets.only(top: 20),
            //   width: 200,
            //   child: ElevatedButton(
            //     onPressed: () => {context.go('/login')},
            //     child: const Text('登录'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

//用户头像和用户名
class UserCard extends StatefulWidget {
  const UserCard({super.key});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: 140,
      child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(20),
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  leading: ClipOval(
                    child: Image.asset('assets/images/avatar_2.jpeg',
                        fit: BoxFit.cover),
                  ),
                  title: const Text("RayBoki",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                  subtitle: const Text("xxxxxxx"),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    size: 30,
                  ),
                )
              ])),
    ));
  }
}

//常用功能
class UserCommonFunc extends StatefulWidget {
  const UserCommonFunc({super.key});

  @override
  State<UserCommonFunc> createState() => _UserCommonFuncState();
}

class _UserCommonFuncState extends State<UserCommonFunc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
            child: const Text(
              '常用功能',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
            alignment: Alignment.center,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Button("-", Icons.add, onPressed: () {}),
                  Button("+", Icons.add, onPressed: () {}),
                  Button("&", Icons.add, onPressed: () {}),
                  Button("*", Icons.add, onPressed: () {}),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Button("-", Icons.add, onPressed: () {}),
                  Button("+", Icons.add, onPressed: () {}),
                  Button("&", Icons.add, onPressed: () {}),
                  Button("*", Icons.add, onPressed: () {}),
                ],
              ),
            ]),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
            child: const Text(
              '偏好',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Button("-", Icons.add, onPressed: () {}),
                  Button("+", Icons.add, onPressed: () {}),
                  SizedBox(width: 75),
                  SizedBox(width: 75),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

//用户界面的按钮
class Button extends StatefulWidget {
  String text;
  IconData icon;
  void Function()? onPressed;
  Button(this.text, this.icon, {Key? key, required this.onPressed})
      : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 75,
        height: 55,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              widget.icon,
              color: Colors.black,
            ),
            Text(widget.text, style: const TextStyle(color: Colors.black))
          ]),
        ));
  }
}
