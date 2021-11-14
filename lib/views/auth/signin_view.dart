import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/auth_provider.dart';
import '../../models/signin_form_model.dart';

class SigninView extends StatefulWidget  {
  static String routeName = '/signin';
  const SigninView({Key? key}) : super(key: key);

  @override
  _SigninViewState createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  late SigninForm signinForm;
  FormState? get form => key.currentState;

  @override
  void initState() {
    signinForm = SigninForm(email: null, password: null);
    super.initState();
  }

   Future<void> submitForm() async {
    if (form!.validate()) {
      form!.save();
      final response = await Provider.of<AuthProvider>(context, listen: false)
          .signin(signinForm);
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
                 'Connexion',
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
                      signinForm.email = newValue!;
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
                      signinForm.password = newValue!;
                    },
                  ),
                                 const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  FlatButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: submitForm,
                    child: const Text(
                               'Se connecter',
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

 