import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/assets/navigation.dart';
import 'package:cred_assess/screens/component/tiles.dart';
import 'package:cred_assess/screens/subscreens/offers/loan/loanedit2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loanEditOne extends StatefulWidget {
  const loanEditOne({super.key});

  @override
  State<loanEditOne> createState() => _loanEditOneState();
}

class _loanEditOneState extends State<loanEditOne> {
  String _accountSelectedValue ='';
  var _currentSelectedValue;
  var _accounttype = [
    "N500,000 - 1,000,000",
    "N500,000 - 1,000,000",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Loans",
            textAlign: TextAlign.center,
            style: GoogleFonts.merriweather(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        actions: [
          Center(
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Color(0xFFC19961),
                    ),
                  ),
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 38.0),
                  child: Column(
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
                                      "How much would you like to borrow?",
                                      style:TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w500,
                                        height: 1.60,
                                      ),
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
                                labelText: 'Enter Borrow Amount',
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
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: Text(
                                "For how long?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w500,
                                  height: 1.60,
                                ),
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
                                      "What do you plan to use the loan for?",
                                      style:TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w500,
                                        height: 1.60,
                                      ),
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
                                labelText: 'Reason for loan',
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
                      Container(
                        margin:const EdgeInsets.symmetric(vertical: 25,),
                          padding: const EdgeInsets.all(25,),
                          decoration: ShapeDecoration(
                            color: Color(0x33EDF7F3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.info_outline_rounded,
                              color: Color(0xFF219D65),
                            ),
                            Expanded(
                              child: Text(
                                '        Longer loan terms will cost less per month because the repayments are spread over a longer period of time. However, you may pay more due to interest',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF219D65),
                                  fontSize: 12,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w400,
                                  height: 1.60,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      _submitButton(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
              Navigation.push(loanEditTwo(),
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

    return Text(
        "Next",
        style: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 15, color: CustomColors.white,fontWeight: FontWeight.w500,
          height: 1,
          letterSpacing: 0.36,)),textAlign: TextAlign.center
    );
  }
  String? validateDetails(String? value) {
    if (value!.isEmpty) {
      return "Value is Required";
    }
    return null;
  }
}
