import 'package:flutter/material.dart';

import './auth/signin_view.dart';
import './auth/signup_view.dart';

class HomeView extends StatelessWidget {
  static String routeName = '/home';
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Bienvenue sur "Recherche du nom en cours" !',
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
               style: TextButton.styleFrom(
              backgroundColor: Colors.grey.shade900,
              ),
              onPressed: () {
                 Navigator.pushNamed(context, SignupView.routeName);
              },
              child: const Text('S\'inscrire',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            TextButton(
               style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                 Navigator.pushNamed(context, SigninView.routeName);
              },
              child: const Text('Connexion',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
