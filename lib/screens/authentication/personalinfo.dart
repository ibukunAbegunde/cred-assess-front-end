import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/assets/logo.dart';
import 'package:cred_assess/assets/navigation.dart';
import 'package:cred_assess/screens/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({Key? key}) : super(key: key);
  @override
  _PersonalInfoPageState createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {

  GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late bool _passwordVisible;
  String _genderSelectedValue ='';
  bool _isLoading = false;
  Size size = WidgetsBinding.instance.window.physicalSize;
  bool agree = false;
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;


  }
  var _gender = [
    "Male",
    "Female",
    "Others",
  ];

  var _Mstatus = [
    "Married",
    "Single",
    "Others",
  ];

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
              // Navigation.push(SigninPage(),
              //   context,
              // );
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
        "NEXT",
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
    var _currentSelectedValue;
    var _MstatusSelectedValue;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:10, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Text(
                  "Personal Information",
                  style: GoogleFonts.merriweather(
                      textStyle:TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal)),
                ),
              )
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
                        "Nationality *",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.black, fontFamily: 'SFUIDisplay'),
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
                        "Date of Birth *",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.black, fontFamily: 'SFUIDisplay'),
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
                        "Gender *",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              InputDecorator(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: height * 0.023, horizontal: width * 0.03),
                    filled: true,
                    fillColor: CustomColors.primaryBlue.withOpacity(0.4),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                    hintText: 'Please select gender',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),borderSide: BorderSide.none)),
                isEmpty: _genderSelectedValue == '',
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _currentSelectedValue,
                    isDense: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        _currentSelectedValue = newValue;
                        // state.didChange(newValue);
                      });
                    },
                    items: _gender.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
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
                        "Marital Status *",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              InputDecorator(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: height * 0.023, horizontal: width * 0.03),
                    filled: true,
                    fillColor: CustomColors.primaryBlue.withOpacity(0.4),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                    hintText: 'Please select Marital Status',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),borderSide: BorderSide.none)),
                isEmpty: _MstatusSelectedValue == '',
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _currentSelectedValue,
                    isDense: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        _currentSelectedValue = newValue;
                        // state.didChange(newValue);
                      });
                    },
                    items: _Mstatus.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
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
                        "BVN *",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.black, fontFamily: 'SFUIDisplay'),
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
                  labelText: 'Enter your BVN',
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
                        "NIN *",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.black, fontFamily: 'SFUIDisplay'),
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
                  labelText: 'Enter your NIN',
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
          padding: const EdgeInsets.only(top:30, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Text(
                  "Contact Information",
                  style: GoogleFonts.merriweather(
                      textStyle:TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal)),
                ),
              )
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
                        "Enter Phone Number *",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.black, fontFamily: 'SFUIDisplay'),
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
                        "Address *",
                        style:CustomColors.formfieldtitle,
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                cursorColor: CustomColors.primaryBlue,
                style:TextStyle(
                    color: Colors.black, fontFamily: 'SFUIDisplay'),
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
                  labelText: 'Enter Address',
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
        _submitButton(),

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
                            "Welcome Ibukun!",
                            style: GoogleFonts.merriweather(
                                textStyle: CustomColors.bigtitle),
                          ),
                          Text(
                            "Let’s get you started",
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



