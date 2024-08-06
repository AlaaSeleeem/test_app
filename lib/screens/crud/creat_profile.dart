import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../shared/Themes/Texts.dart';
import '../../shared/Themes/colors.dart';
import '../../shared/Widgets/action_button.dart';

class CreatProfile extends StatelessWidget {
  CreatProfile({super.key});
  var formKey = GlobalKey<FormState>();
  var phoneNumberNode = FocusNode();
  var name = TextEditingController();
  var phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Creat User',
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
                    // user name text field
                    TextFormField(
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(phoneNumberNode);
                      },
                      validator: (value) {
                        if ((value == null || value.isEmpty)) {
                          return "user name can't be empty";
                        }
                        return null;
                      },
                      controller: name,
                      keyboardType: TextInputType.name,
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
                            'enter a valid name',
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
                    // phone number text field
                    StatefulBuilder(
                      builder: (context, setState) => TextFormField(
                        focusNode: phoneNumberNode,
                        validator: (value) {
                          if ((value == null || value.isEmpty)) {
                            return "Phone number can't be empty";
                          }
                          return null;
                        },
                        controller: phoneNumber,
                        keyboardType: TextInputType.visiblePassword,
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
                            label: Text('enter a phon number',
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
                      title: 'creat',
                      buttonHight: 60,
                      titleStyle: h5Bold,
                      action: () async {
                        if (formKey.currentState!.validate()) {
                          var ref =FirebaseFirestore.instance
                              .collection('users').doc();
                          var user = {
                            'ID': ref.id,
                            'name': name.text,
                            'phone': phoneNumber.text
                          };
                          await
                              ref.set(user);
                        }
                      },
                      buttonWidth: double.infinity,
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
