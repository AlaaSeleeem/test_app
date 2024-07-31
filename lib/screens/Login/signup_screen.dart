import 'package:flutter/material.dart';
import 'package:my_network_app/screens/Login/login_screen.dart';

import '../../shared/Themes/Texts.dart';
import '../../shared/Themes/colors.dart';
import '../../shared/Widgets/action_button.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  var email = TextEditingController();

  var password = TextEditingController();
  var confirmPassword = TextEditingController();

  var formKey = GlobalKey<FormState>();

  var passwordNode = FocusNode();
  var confirmPasswordNode = FocusNode();

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'sign Up',
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Form(
                key: formKey,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Email text field
                    TextFormField(
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(passwordNode);
                      },
                      validator: (value) {
                        if ((value == null || value.isEmpty)) {
                          return "Email can't be empty";
                        }
                        return null;
                      },
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: white,
                      style: title1,
                      decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(width: 2, color: gray)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(width: 2, color: lightRed)),
                          label: Text(
                            'enter a valid email',
                            style: title1.merge(TextStyle(color: gray)),
                          ),
                          // hintText: 'enter the phone number',
                          //hintStyle: title1.merge(TextStyle(color: gray)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(width: 2, color: gray)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(width: 2, color: white))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // password text field
                    StatefulBuilder(
                      builder: (context, setState) => TextFormField(
                        onFieldSubmitted: (value) {
                          FocusScope.of(context)
                              .requestFocus(confirmPasswordNode);
                        },
                        focusNode: passwordNode,
                        validator: (value) {
                          if ((value == null || value.isEmpty)) {
                            return "Password can't be empty";
                          }
                          return null;
                        },
                        controller: password,
                        obscureText: isHidden,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: white,
                        style: title1,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: isHidden == true
                                  ? Icon(
                                      Icons.lock,
                                      color: gray,
                                    )
                                  : Icon(
                                      Icons.lock_open,
                                      color: gray,
                                    ),
                              onPressed: () {
                                isHidden = !isHidden;
                                setState(() {});
                              },
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 2, color: gray)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(width: 2, color: lightRed)),
                            label: Text('Enter a password',
                                style: title1.merge(TextStyle(color: gray))),

                            // hintText: 'enter the phone number',
                            //hintStyle: title1.merge(TextStyle(color: gray)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 2, color: gray)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(width: 2, color: white))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // confirm password text field
                    StatefulBuilder(
                      builder: (context, setState) => TextFormField(
                        focusNode: confirmPasswordNode,
                        validator: (value) {
                          if ((password.text.isEmpty)) {
                            return "Password can't be empty";
                          }
                          if (value != password.text) {
                            return "Passwords doesn,t match";
                          }
                          return null;
                        },
                        controller: confirmPassword,
                        obscureText: isHidden,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: white,
                        style: title1,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: isHidden == true
                                  ? Icon(
                                      Icons.lock,
                                      color: gray,
                                    )
                                  : Icon(
                                      Icons.lock_open,
                                      color: gray,
                                    ),
                              onPressed: () {
                                isHidden = !isHidden;
                                setState(() {});
                              },
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 2, color: gray)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(width: 2, color: lightRed)),
                            label: Text('Confirm password',
                                style: title1.merge(TextStyle(color: gray))),

                            // hintText: 'enter the phone number',
                            //hintStyle: title1.merge(TextStyle(color: gray)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 2, color: gray)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(width: 2, color: white))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ActionButton(
                      title: 'sign Up',
                      buttonWidth: double.infinity,
                      buttonHight: 60,
                      titleStyle: h5Bold,
                      action: () {
                        if (formKey.currentState!.validate()) {
                          print('====================================');
                          print(email.text);
                          print('====================================');
                          print(password.text);
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('or',
                        style: h4Bold.merge(
                          TextStyle(color: gray),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ActionButton(
                        title: 'sign Up with google',
                        buttonHight: 60,
                        titleStyle: h5Bold,
                        action: () {},
                        buttonWidth: double.infinity),
                    SizedBox(
                      height: 20,
                    ),
                    ActionButton(
                        title: 'sign Up with facebook',
                        buttonHight: 60,
                        titleStyle: h5Bold,
                        action: () {},
                        buttonWidth: double.infinity),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => LoginScreen()),
                              ),
                            );
                          },
                          child: Text(
                            'Already have an account?',
                            style: title2.merge(TextStyle(color: gray)),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
