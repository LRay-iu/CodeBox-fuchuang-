import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:xiao_tally/api/auth/login.dart';
import 'package:xiao_tally/components/about/logo.dart';
import 'package:xiao_tally/components/flutter_flow_widgets.dart';
import 'package:xiao_tally/components/login/textfield.dart';
import 'package:xiao_tally/components/login/thirdparty.dart';
import 'package:xiao_tally/src/generated/xiao_auth.pb.dart';
import 'package:xiao_tally/config/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          '登录',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: SingleChildScrollView(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        //logo
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                          child: XiaoLogo(),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 24, 0, 24),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                UsernameField(
                                    fieldController: _usernameController,
                                    labelText: '用户名'),
                                PasswordField(
                                    fieldController: _passwordController,
                                    labelText: '密码'),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 16),
                                  child: Wrap(
                                    spacing: 24,
                                    runSpacing: 8,
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.center,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {},
                                        text: '忘记密码 ？',
                                        options: FFButtonOptions(
                                          width: 140,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                  ),
                                          elevation: 0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          if (!_formKey.currentState!
                                              .validate()) {
                                            return;
                                          }

                                          LoginRequest req = LoginRequest(
                                              username:
                                                  _usernameController.text,
                                              password:
                                                  _passwordController.text);

                                          var status =
                                              await login(context, req);
                                          if (status) {
                                            // go home
                                            setState(() {
                                              context.go('/');
                                            });
                                          } else {
                                            Fluttertoast.showToast(
                                                msg: "用户名不存在或密码错误",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.CENTER,
                                                timeInSecForIosWeb: 1,
                                                textColor: Colors.white,
                                                fontSize: 16.0);
                                          }
                                        },
                                        text: '登录',
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 50,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                          elevation: 3,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(60),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // 第三方登录
                                const LineWithText(
                                  text: '第三方登录',
                                ),
                                // 微信，支付宝登录按钮
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 16),
                                  child: Wrap(
                                    spacing: 24,
                                    runSpacing: 8,
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.center,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      IconButton(
                                        onPressed: () async => {},
                                        icon: const Icon(Ionicons.logo_wechat),
                                        color: Colors.green,
                                      ),
                                      IconButton(
                                        onPressed: () async => {},
                                        icon: const Icon(Ionicons.logo_alipay),
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 16),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (Navigator.of(context).canPop()) {
                      context.pop();
                    }
                    context.push('/register');
                  },
                  text: '去注册',
                  options: FFButtonOptions(
                    width: 300,
                    height: 50,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                    elevation: 2,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
