import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../utils/functions.dart';
import '../../widgets/button_app_bar.dart';
import '../../widgets/main_button.dart';
import '../../widgets/main_text_form_field.dart';
import 'components/bottom_sheet.dart';

class ComfirmPassword extends StatefulWidget {
  const ComfirmPassword({super.key});

  @override
  State<ComfirmPassword> createState() => _ComfirmPasswordState();
}

class _ComfirmPasswordState extends State<ComfirmPassword> {
  String? password, comfirmPassword;
  final _formKey = GlobalKey<FormState>();
  final _comfirmPasswordController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  final _comfirmPasswordFocusNode = FocusNode();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 53, right: 32, left: 32),
          child: Form(
            key: _formKey,
            autovalidateMode: _autoValidateMode,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ButtonAppBar(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  color: kDarkColor,
                  icon: Icons.arrow_back_ios_new_rounded,
                ),
                const SizedBox(
                  height: 45,
                ),
                const Text(
                  'Create new password',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Your new password must be different from previously used password",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
                ),
                const SizedBox(
                  height: 55,
                ),
                MainTextField(
                  hintText: 'Password',
                  controller: _passwordController,
                  focusNode: _passwordFocusNode,
                  keyBoardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () {
                    FocusScope.of(context)
                        .requestFocus(_comfirmPasswordFocusNode);
                  },
                  onSave: (data) {
                    password = data;
                  },
                  validator: (value) {
                    return Validator.validatePassword(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                MainTextField(
                    hintText: 'Comfirm password',
                    controller: _comfirmPasswordController,
                    focusNode: _comfirmPasswordFocusNode,
                    keyBoardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    onSave: (data) {
                      password = data;
                    },
                    validator: (value) {
                      if (value!.isEmpty) return 'Field is required';
                      if (value != _passwordController.text) {
                        return 'Not Match Password';
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(
                  height: 110,
                ),
                Align(
                  child: MainButton(
                    text: 'Comfirm',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        showModalBottomSheet(
                            //isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0)),
                            context: context,
                            builder: (context) {
                              // return const AddNoteButtomSheet();
                              return const BottomSheetWidget();
                            });
                      } else {
                        setState(() {
                          _autoValidateMode = AutovalidateMode.always;
                        });
                        const snackBar = SnackBar(
                          content: Text('Faild to registertion!'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
