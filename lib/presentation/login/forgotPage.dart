import 'package:flutter/material.dart';
import '../util/constants.dart' as constants;

class ForgotPasswordWidget extends StatefulWidget {
  const ForgotPasswordWidget({Key? key}) : super(key: key);

  @override
  _ForgotPasswordWidgetState createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late TextEditingController emailLoginController;

  @override
  void initState() {
    super.initState();
    emailLoginController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF29057),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.chevron_left_rounded,
            color: constants.coal,
          ),
        ),
        title: const Text(
          'Recuperação de senha',
          style: constants.ts_label,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: constants.orange,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Color(0xFFF29057),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 48),
                      child: Text(
                        'Insira o email associado com sua conta que mandaremos o link de verificação...',
                        style: constants.ts_label,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
              child: TextFormField(
                controller: emailLoginController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Endereço de email',
                  labelStyle: constants.ts_label,
                  hintText: 'Enter your email...',
                  hintStyle: constants.ts_label,
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
                  fillColor: constants.coal,
                  contentPadding:
                  EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                ),
                style: constants.ts_label,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
