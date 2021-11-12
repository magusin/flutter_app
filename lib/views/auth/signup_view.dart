import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/models/signup_from_model.dart';
import '../../models/signup_from_model.dart';

// class SignupView extends StatefulWidget {
//   static String routeName = '/signup';
//   const SignupView({Key? key}) : super(key: key);

//   @override
//   State<SignupView> createState() => _SignupViewState();
// }

// class _SignupViewState extends State<SignupView> {
//   final GlobalKey<FormState> key = GlobalKey<FormState>();
//   late SignupForm signupForm;
//   FormState get form => key.currentState;

//   @override
//   void initState() {
//     signupForm = SignupForm(email: null, username: null, password: null);
//     super.initState();
//   }

//   Future<void> submitForm() async {
//     if (form.validate()) {
//       form.save();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding:
//             const EdgeInsets.only(top: 50, bottom: 20, left: 20, right: 20),
//         color: Colors.black,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const Text(
//               'Inscription',
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
//             Form(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const Text(
//                     'email',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 3),
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       fillColor: Colors.grey.shade900,
//                       filled: true,
//                     ),
//                     style: const TextStyle(
//                       color: Colors.white,
//                     ),
//                     onSaved: (newValue) {
//                       signupForm.email = newValue;
//                     },
//                   ),
//                   TextButton(
//                     style: TextButton.styleFrom(
//                       backgroundColor: Theme.of(context).primaryColor,
//                     ),
//                     onPressed: () {},
//                     child: const Text(
//                       'S\'inscrire',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class SignupView extends StatefulWidget {
  static String routeName = '/signup';

  const SignupView({Key? key}) : super(key: key);

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  late SignupForm signupForm;
  FormState? get form => key.currentState;

  @override
  void initState() {
    signupForm = SignupForm(email: null, username: null, password: null);
    super.initState();
  }

  Future<void> submitForm() async {
    if (form!.validate()) {
      form!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50, bottom: 20, left: 20, right: 20),
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Inscription',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
            ),
            Form(
              key: key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'email',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade900,
                      filled: true,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    onSaved: (newValue) {
                      signupForm.email = newValue;
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  const Text(
                    'username',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade900,
                      filled: true,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    onSaved: (newValue) {
                      signupForm.username = newValue;
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  const Text(
                    'password',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade900,
                      filled: true,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    onSaved: (newValue) {
                      signupForm.password = newValue;
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  TextButton(
                       style: TextButton.styleFrom(
                         backgroundColor: Theme.of(context).primaryColor,
                       ),
                    onPressed: submitForm,
                    child: const Text(
                      'S\'inscrire',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}                                                                                                                                                                                                                                         