import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heka_app/screens/signinpage/signinLocalStyle.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//[SigninPage] is a widget that represents a sign in form
class SigninPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SigninPageState();
  }
}

class SigninPageState extends State<SigninPage> {
  TextEditingController emailAddressController;
  TextEditingController passwordController;
  FirebaseAuth firebaseAuth;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();

    emailAddressController.addListener(() {
      print(emailAddressController.text);
    });

    passwordController.addListener(() {
      print(emailAddressController.text);
    });
    initFirebase();
  }

  @override
  void dispose() {
    super.dispose();
    emailAddressController.dispose();
    passwordController.dispose();
  }

  Future<FirebaseApp> initFirebase() async {
    var fb = await Firebase.initializeApp();
    return fb;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xff1A6DFF),
                Color(0xff7209B7),
              ])),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //TODO: Plugin error for google fonts
              SizedBox(
                height: 15,
              ),
              Text("HEKA",
                  style: GoogleFonts.poppins(
                      fontSize: 55,
                      color: Colors.white,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 70,
              ),
              //TODO: Set style to be poppings using GoogleFonts
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sign in",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "New user?",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/signuppage");
                          },
                          child: Text(
                            "Create an account",
                            style: TextStyle(
                                fontSize: 17, color: Color(0xff3A0CA3)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xff3A0CA3)),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: emailAddressController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email address",
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 13)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xff3A0CA3)),
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            controller: passwordController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "password",
                                hintStyle: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 13)))),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  onPressed: () async {
                    firebaseAuth = FirebaseAuth.instance;
                    String userEmail = emailAddressController.text != null
                        ? emailAddressController.text
                        : "";
                    String userPassword = passwordController.text != null
                        ? passwordController.text
                        : "";
                    print("${userEmail.trim()} ${userPassword.trim()} values");
                    //check if user has an account already
                    try {
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .signInWithEmailAndPassword(
                              email: userEmail, password: userPassword);
                      if (userCredential.user != null) {
                        Navigator.pushNamed(context, "/main");
                      }
                    } on FirebaseAuthException catch (e) {
                      Alert(
                              context: context,
                              title: "FAILED AUTHENTICATION",
                              desc: "Email not recognized.")
                          .show();
                      emailAddressController.clear();
                      passwordController.clear();
                    } catch (e) {
                      print(e);
                    }
                    //If user has account, we sign the user in
                    //If not, create account user or redirect to sign up page
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.only(top: 14),
                      child: Text(
                        "Sign in",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue.shade700),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
