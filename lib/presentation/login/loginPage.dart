import 'package:acolher/presentation/login/forgotPage.dart';
import 'package:flutter/material.dart';
import '../util/constants.dart' as constants;

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late TextEditingController passwordLoginController;
  late bool passwordLoginVisibility;
  late TextEditingController usernameLoginController;

  @override
  void initState() {
    super.initState();
    passwordLoginController = TextEditingController();
    passwordLoginVisibility = false;
    usernameLoginController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: constants.orange,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF29057),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 48, 24, 48),
          child: Material(
            color: Colors.transparent,
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxWidth: 200,
                maxHeight: 200,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(36),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 48),
                      child: Image.asset(
                        'assets/images/Frame_1_(1).png',
                        width: MediaQuery.of(context).size.width * 0.7,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 48),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: TextFormField(
                                controller: usernameLoginController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Insira seu nome de usuário',
                                  labelStyle: constants.ts_label,
                                  hintText: 'Enter your email...',
                                  hintStyle: constants.ts_hint,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFC4C4C4),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 24, 20, 24),
                                ),
                                style: constants.ts_label,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: TextFormField(
                                controller: passwordLoginController,
                                obscureText: !passwordLoginVisibility,
                                decoration: InputDecoration(
                                  labelText: 'Senha',
                                  labelStyle: constants.ts_label,
                                  hintText: 'Enter your email...',
                                  hintStyle: constants.ts_label,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFC4C4C4),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 24, 20, 24),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordLoginVisibility =
                                          !passwordLoginVisibility,
                                    ),
                                    child: Icon(
                                      passwordLoginVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF757575),
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: constants.ts_label,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 48, 0, 48),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ForgotPasswordWidget()),
                                        );
                                      },
                                      child: Text(
                                        'Esqueceu a senha?',
                                        style: constants.ts_label,
                                      ),
                                    ),
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
        ),
      ),
    );
  }
}
