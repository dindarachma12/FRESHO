import 'package:flutter/material.dart';
// import 'package:fresho_login/pages/auth/home.dart';
import 'package:fresho_login/pages/auth/navbar.dart';
import 'package:fresho_login/pages/auth/register.dart';
import 'package:fresho_login/pages/welcome_pages.dart';
import 'package:fresho_login/shared/shared.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordHide = false;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  // final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordHide = true;
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    // emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) {
                return WelcomePage();
            }));
          },
          ),
        ),
        body: SafeArea(
          
          child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Column(
              children: [
                Image.asset('assets/images/auth_logo.png',
                    height: 81, fit: BoxFit.fill),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Log In",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 24,
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 10),
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Username',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: TextField(
                              controller: usernameController,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: whiteColor,
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 0.5),
                                      borderRadius: BorderRadius.circular(25)),
                                  hintText: 'Enter Your Username'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: Text(
                            'Password',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          Container(
                            width: MediaQuery.of(context).size.width * 1.5,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              child: TextField(
                                controller: passwordController,
                                obscureText: passwordHide,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: whiteColor,
                                    border: OutlineInputBorder(
                                        borderSide:
                                            const BorderSide(width: 0.5),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    hintText: 'Enter Your Password',
                                    suffix: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          // passwordHide = !passwordHide;
                                          if (passwordHide) {
                                            //if passenable == true, make it false
                                            passwordHide = false;
                                          } else {
                                            passwordHide =
                                                true; //if passenable == false, make it true
                                          }
                                        });
                                      },
                                      icon: Icon(passwordHide == true
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(30),
                            color: primaryColor,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: InkWell(
                                onTap: () {
                                   Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const BottomNavbar ();
                                  // Navigator.pushAndRemoveUntil(context, newRoute, (route) => false)
                                }));
                                },
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: whiteTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ),
                          
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Don’t have an account? ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) {
                                      return RegisterPage();
                                    }));
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xff2B4865)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
