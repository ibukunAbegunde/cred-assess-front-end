import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/assets/logo.dart';
import 'package:cred_assess/assets/navigation.dart';
import 'package:cred_assess/screens/authentication/login.dart';
import 'package:cred_assess/screens/authentication/personalinfo.dart';
import 'package:cred_assess/screens/subscreens/offers/card/card3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class creditPage extends StatefulWidget {
  const creditPage({Key? key}) : super(key: key);
  @override
  _creditPageState createState() => _creditPageState();
}

class _creditPageState extends State<creditPage> {

  GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late bool _passwordVisible;
  String _accountSelectedValue ='';
  var _currentSelectedValue;
  bool _isLoading = false;
  Size size = WidgetsBinding.instance.window.physicalSize;
  bool agree = false;
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;


  }

  var _accounttype = [
    "N500,000 - 1,000,000",
    "N500,000 - 1,000,000",
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
              Navigation.push(cardScreen(),
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
        "Find Offers",
        style: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 15, color: CustomColors.white,fontWeight: FontWeight.w500,
          height: 1,
          letterSpacing: 0.36,)),textAlign: TextAlign.center
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
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Select what you want to do with this new card",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w500,
                        height: 1.60,
                      ),
                    ),
                    Text(
                      "By Providing this Information, you enable us to select the ideal card type for you",
                      style: TextStyle(
                        color: Color(0xFF66666A),
                        fontSize: 14,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w300,
                        height: 1.60,
                      ),
                    )
                  ],
                ),
              ),
              InputDecorator(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: height * 0.015, horizontal: width * 0.03),
                    filled: true,
                    fillColor: CustomColors.primaryBlue.withOpacity(0.1),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),borderSide: BorderSide.none)),
                isEmpty: _accountSelectedValue == '',
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
                    items: _accounttype.map((String value) {
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
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Select what you want to do with this new card",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w500,
                        height: 1.60,
                      ),
                    ),
                    Text(
                      "By Providing this Information, you enable us to select the ideal card type for you",
                      style: TextStyle(
                        color: Color(0xFF66666A),
                        fontSize: 14,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w300,
                        height: 1.60,
                      ),
                    )
                  ],
                ),
              ),
              InputDecorator(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: height * 0.015, horizontal: width * 0.03),
                    filled: true,
                    fillColor: CustomColors.primaryBlue.withOpacity(0.1),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),borderSide: BorderSide.none)),
                isEmpty: _accountSelectedValue == 'N500,000 - 1,000,000',
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
                    items: _accounttype.map((String value) {
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
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Center(
              child: Text("Credit cards",textAlign: TextAlign.center,
                style: GoogleFonts.merriweather(textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Merriweather',
                  fontWeight: FontWeight.w700,
                ),),),
            ),
            actions: [Center(
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text('Cancel',style: TextStyle(color:Color(0xFFC19961),),),
              )),
            )],
          ),
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



