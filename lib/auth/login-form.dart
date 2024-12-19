import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isActivated = false;
  var key = GlobalKey<FormState>();
  String email = '';
  String password = '';

  String? validateMail(value) {
    if (value == null || value.trim().isEmpty) {
      return "L'email' est obligatoire !";
    }

    if (!EmailValidator.validate(value)) {
      return "Le format du mail n'est pas correct";
    }
    return null;
  }

  String? validatePassword(value) {
    if (value == null || value.trim().isEmpty) {
      return "Le mot de passe est obligatoire !";
    }
    return null;
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Connexion"),
            content: Text("Connexion réussie"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('ok'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: key,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Connexion à Twetty !'),
              TextFormField(
                onSaved: (value) {
                  email = value!;
                },
                validator: validateMail,
                decoration: InputDecoration(
                    labelText: "Email", hintText: "Saisissez votre email..."),
              ),
              TextFormField(
                onSaved: (value) {
                  password = value!;
                },
                validator: validatePassword,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Mot de passe",
                    hintText: "Saisissez votre mot de passe..."),
              ),
              SwitchListTile(
                  value: isActivated,
                  onChanged: (value) {
                    setState(() {
                      isActivated = value;
                    });
                  },
                  title: Text('Mémoriser mes informations')),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            if (key.currentState!.validate()) {
                              //redirection vers la page d'accueil
                              key.currentState!.save();
                              Navigator.pushNamed(context, "/tweets",
                                  arguments: email);
                              _showDialog();
                            }
                          },
                          child: Text('Connexion',
                              style: TextStyle(color: Colors.white)),
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Color(0xFF58B0F0))))),
                ],
              )
            ],
          ),
        ));
  }
}
