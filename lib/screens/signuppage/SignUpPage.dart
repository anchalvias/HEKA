import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUpPageState();
  }
}

class SignUpPageState extends State<SignUpPage> {
  TextEditingController emailAddressController;
  TextEditingController passwordController;
  TextEditingController userNameController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    userNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
                height: 55,
              ),
              //TODO: Set style to be poppings using GoogleFonts
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sign up",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 20,
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
                            hintText: "Name",
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
                                hintText: "Password",
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
                    String userEmail = emailAddressController.text != null
                        ? emailAddressController.text
                        : "";
                    String userName = userNameController.text != null
                        ? emailAddressController.text
                        : "";
                    String userPassword = passwordController.text != null
                        ? passwordController.text
                        : "";

                    try {
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .createUserWithEmailAndPassword(
                              email: userEmail, password: userPassword);

                      if (userCredential.user != null) {
                        Navigator.pushNamed(context, "/infopages");
                      }
                    } catch (e) {
                      print(e);
                    }
                    //check if user has an account already
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
                        "Sign up",
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
