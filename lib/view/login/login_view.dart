import 'package:flutter/material.dart';
import 'package:ott_code_frontend/common/color_extension.dart';
import 'package:ott_code_frontend/common_widgets/rounded_button.dart';
import 'package:ott_code_frontend/common_widgets/rounded_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtMobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ApplicationColor.bgColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ApplicationColor.primaryColor,
        onPressed: () {
          ApplicationColor.themeModeDark = !ApplicationColor.themeModeDark;
          if (mounted) {
            setState(() {});
          }
        },
        child: Icon(
          ApplicationColor.themeModeDark ? Icons.light_mode : Icons.dark_mode,
          color: ApplicationColor.text,
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: media.width,
            height: media.width,
            child: ClipRect(
              child: Transform.scale(
                  scale: 1.3,
                  child: Image.asset(
                    "assets/images/login_top.png",
                    width: media.width,
                    height: media.width,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Container(
            width: media.width,
            height: media.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                ApplicationColor.bgColor.withOpacity(0),
                ApplicationColor.bgColor.withOpacity(0),
                ApplicationColor.bgColor
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: media.width * 0.12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: media.width,
                    height: media.width * 0.75,
                    alignment: const Alignment(0, 0.5),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: ApplicationColor.themeModeDark
                              ? Colors.transparent
                              : ApplicationColor.bgColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: ApplicationColor.themeModeDark
                              ? null
                              : const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6,
                                      offset: Offset(0, 4))
                                ]),
                      child: Image.asset(
                        "assets/images/app_logo.png",
                        width: media.width * 0.35,
                        height: media.width * 0.35,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  RoundedTextField(
                    title: "Email",
                    hintText: "Email here",
                    keyboardType: TextInputType.emailAddress,
                    controller: txtEmail,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  RoundedTextField(
                    title: "Password",
                    hintText: "Password here",
                    obscureText: true,
                    controller: txtPassword,
                    right: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot ?",
                        style: TextStyle(
                            color: ApplicationColor.text,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  RoundedButton(onPressed: () {}, title: "Log In"),
                  const SizedBox(
                    height: 30,
                  ),

                  //divider
                  Row(children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        color: ApplicationColor.subText,
                        height: 1,
                      ),
                    ),
                    Text("Social Login",
                        style: TextStyle(
                            color: ApplicationColor.text,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        color: ApplicationColor.subText,
                        height: 1,
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 15,
                  ),

                  // social media icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/fb_btn.png",
                            width: 45,
                            height: 45,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/google_btn.png",
                            width: 45,
                            height: 45,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text("Don't have an account?",
                      style: TextStyle(
                          color: ApplicationColor.subText,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: ApplicationColor.text,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
