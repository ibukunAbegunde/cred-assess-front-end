import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/assets/logo.dart';
import 'package:cred_assess/assets/navigation.dart';
import 'package:cred_assess/screens/authentication/login.dart';
import 'package:cred_assess/screens/authentication/personalinfo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {

  GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late bool _passwordVisible;
  bool _isLoading = false;
  Size size = WidgetsBinding.instance.window.physicalSize;
  bool agree = false;
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;


  }


  ///-----------------------------------
  ///login buton
  ///---------------------------------
  Widget _submitButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: CustomColors.darkpurple,
          borderRadius: BorderRadius.all(Radius.circular(8))),

      child: Expanded(
        child: TextButton(

            child: _buildChild(),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(CustomColors.darkpurple,)),
            onPressed: () async {
              Navigation.push(PersonalInfoPage(),
                context,
              );
            }
        ),
      ),
    );
  }

  ///-----------------------------------
  ///login circularprogress indicator widget
  ///---------------------------------
  Widget _buildChild() {

    ///check for on press then start turning and wait till customers information response is gotten from api
    if (_isLoading) {
      return Transform.scale(
          scale: 0.5,
          child: const CircularProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation(Colors.red),
            strokeWidth: 5,
          ));
    }
    return Text(
      "Sign Up",
      style: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 15, color: CustomColors.white,fontWeight: FontWeight.w500,
        height: 1,
        letterSpacing: 0.36,)),textAlign: TextAlign.center
    );
  }

  ///-----------------------------------
  ///click to register widget
  ///---------------------------------
  Widget _createAccountLabel() {
    TextStyle defaultStyle = const TextStyle(
        color: Colors.grey, fontSize: 13.0, fontWeight: FontWeight.w600);
    TextStyle linkStyle = const TextStyle(color: Colors.blue);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  child:  RichText(
          text: TextSpan(
          text: 'Already have an account? ',
          style: TextStyle(
              color: Colors.black, fontSize: 10),
          children: <TextSpan>[
            TextSpan(text: 'Log in',
                style: TextStyle(
                    color:  Color(0xFFC19961), fontSize: 10)
            ),
          ]
      ),
    ),
                  onTap: () {
                    Navigation.push(LoginPage(),
                        context);
                  }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  ///-----------------------------------
  ///login Card design
  ///---------------------------------
  Widget _emailPasswordWidget() {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "First Name",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.white, fontFamily: 'SFUIDisplay'),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: height * 0.023, horizontal: width * 0.03),
                  filled: true,
                  fillColor: CustomColors.primaryBlue.withOpacity(0.4),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: CustomColors.primaryBlue,
                    ),
                  ),
                  labelText: 'Enter your First Name',
                  labelStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
                validator: validateDetails,
                // onSaved: (String? val) {
                //   email = val!;
                // },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Middle Name",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.white, fontFamily: 'SFUIDisplay'),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: height * 0.023, horizontal: width * 0.03),
                  filled: true,
                  fillColor: CustomColors.primaryBlue.withOpacity(0.4),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: CustomColors.primaryBlue,
                    ),
                  ),
                  labelText: 'Enter your Middle Name',
                  labelStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
                validator: validateDetails,
                // onSaved: (String? val) {
                //   email = val!;
                // },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Last Name",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.white, fontFamily: 'SFUIDisplay'),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: height * 0.023, horizontal: width * 0.03),
                  filled: true,
                  fillColor: CustomColors.primaryBlue.withOpacity(0.4),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: CustomColors.primaryBlue,
                    ),
                  ),
                  labelText: 'Enter your Last Name',
                  labelStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
                validator: validateDetails,
                // onSaved: (String? val) {
                //   email = val!;
                // },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Email Address",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.white, fontFamily: 'SFUIDisplay'),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: height * 0.023, horizontal: width * 0.03),
                  filled: true,
                  fillColor: CustomColors.primaryBlue.withOpacity(0.4),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: CustomColors.primaryBlue,
                    ),
                  ),
                  labelText: 'Enter your Email Address',
                  labelStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
                validator: validateDetails,
                // onSaved: (String? val) {
                //   email = val!;
                // },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Password",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.white, fontFamily: 'SFUIDisplay'),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: height * 0.023, horizontal: width * 0.03),
                  filled: true,
                  fillColor: CustomColors.primaryBlue.withOpacity(0.4),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: CustomColors.primaryBlue,
                    ),
                  ),
                  labelText: 'Minimum of 8 Characters',
                  labelStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
                validator: validateDetails,
                // onSaved: (String? val) {
                //   email = val!;
                // },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Confirm Password",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.white, fontFamily: 'SFUIDisplay'),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: height * 0.023, horizontal: width * 0.03),
                  filled: true,
                  fillColor: CustomColors.primaryBlue.withOpacity(0.4),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: CustomColors.primaryBlue,
                    ),
                  ),
                  labelText: 'Minimum of 8 Characters',
                  labelStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
                validator: validateDetails,
                // onSaved: (String? val) {
                //   email = val!;
                // },
              ),
            ],
          ),
        ),
        ///button
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
                    children: [
                      Material(
                        child: Checkbox(
                          checkColor: Colors.white,
                          activeColor: CustomColors.darkpurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          value: agree,
                          onChanged: (value) {
                            setState(() {
                              agree = value ?? false;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                              text: 'I agree to Credit Assess ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10),
                              children: <TextSpan>[
                                TextSpan(text: 'TERMS OF SERVICE ',
                                    style: TextStyle(
                                        color:  Color(0xFFC19961), fontSize: 10)
                                ),
                                TextSpan(text: 'and ',
                                    style: TextStyle( fontSize: 10)
                                ),
                                TextSpan(text: 'PRIVACY POLICY',
                                    style: TextStyle(
                                        color: Color(0xFFC19961), fontSize: 10)
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
        ),
        _submitButton(),
        Center(child: Text('Or'),),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Colors.black),
                  ),
                  onPressed: () {
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/gog.png"),
                          height: 18.0,
                          width: 24,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24, right: 8),
                          child: Text(
                            'Continue with Google',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Center(child: Text('Or'),),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Colors.black),
                  ),
                  onPressed: () {
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/apple.png"),
                          height: 25.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24, right: 8),
                          child: Text(
                            'Continue with Apple',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        ///registeration link tex
        _createAccountLabel(),

      ],
    );
  }


  ///-----------------------------------
  ///main bulid for login screen
  ///---------------------------------
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
          backgroundColor: CustomColors.white,
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            height: height,
            child:
            SingleChildScrollView(
              child: Form(
                key: _key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(height: height / 10),
                    Center(
                      child: Logos(
                        height: 31,
                      ),
                    ),
                    ///login card title
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Create an account...",
                            style: GoogleFonts.merriweather(
                                textStyle: CustomColors.bigtitle),
                          ),
                          Text(
                            "Get started with us at Credit Assess",
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Color(0xFF66666A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, letterSpacing: -0.32)),
                          ),
                        ],
                      ),
                    ),

                    Column(
                      children: [
                        _emailPasswordWidget(),
                      ],
                    ),


                  ],
                ),
              ),
            ),

          )),
    );
  }

  String? validateDetails(String? value) {
    if (value!.isEmpty) {
      return "Value is Required";
    }
    return null;
  }
}



