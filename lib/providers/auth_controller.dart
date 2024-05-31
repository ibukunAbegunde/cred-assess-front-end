import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final FirebaseStorage _storage = FirebaseStorage.instance;

  _uploadProfileImageToStorage(Uint8List? image) async {
    Reference ref =
        _storage.ref().child('profilePics').child(_auth.currentUser!.uid);

    UploadTask uploadTask = ref.putData(image!);

    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();

    return downloadUrl;
  }


  Future<String> signUpUSers(
      String firstName,
      String middleName,
      String lastName,
      String email,
      String password,) async {

    String res = 'Some error occurred';

    try {
      if (
      email.isNotEmpty &&
          firstName.isNotEmpty &&
          middleName.isNotEmpty &&
          lastName.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty) {

        //Create the users

        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);


        await _firestore.collection('users').doc(cred.user!.uid).set({
          'FirstName': firstName,
          'MiddleName': middleName,
          'LastName': lastName,
          'Email': email,
        });

        res = 'success';
        print('am i');
        print(res);
      } else {
        res = 'Please Fields must not be empty';
      }
    } catch (e) {
      print(e);
    }

    return res;
  }

  Future<DocumentSnapshot?> _getUserByReferralCode(String referralCode) async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('referralCode', isEqualTo: referralCode)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      // Return the first matching document snapshot
      return querySnapshot.docs.first;
    } else {
      // Return null if no matching document is found
      return null;
    }
  }
  loginUsers(String email, String password) async {
    String res = 'something went wrong';

    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);

        res = 'success';
      } else {
        res = 'Please Fields must not be empty';
      }
    } catch (e) {
      res = e.toString();
    }

    return res;
  }
}
