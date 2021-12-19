import 'package:busgo/dashboard.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);
  
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  bool _login = true;

  String _username = "";
  String _email = "";
  String _password = "";
  String _phoneNumber = "";
  String _address = "";

  void _submitForm() {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Data submitted successfully")));
          Navigator.of(context).pushNamed(Dashboard.routeName);
      if(_email == "admin@admin.com" && _password == "admin123")
        Navigator.of(context).pushNamed(Dashboard.routeName);

    }else
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Please enter all fields")));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(15),
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        color: Theme
            .of(context)
            .accentColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Icon(Icons.directions_bus, size: 50,),
                  if (!_login)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        key: ValueKey('username'),
                        autocorrect: true,
                        textCapitalization: TextCapitalization.words,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Icon(
                              Icons.person,
                              color: Colors.black,
                            ), // icon is 48px widget.
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 4) {
                            return 'Please enter at least 4 characters';
                          }
                        },
                        onSaved: (value) {
                          _username = value!;
                        },
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      key: ValueKey('email'),
                      autocorrect: false,
                      textCapitalization: TextCapitalization.none,
                      enableSuggestions: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.email,
                            color: Colors.black,
                          ), // icon is 48px widget.
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Please enter your email address';
                        }
                      },
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      key: ValueKey('password'),
                      autocorrect: false,
                      textCapitalization: TextCapitalization.none,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.vpn_key,
                            color: Colors.black,
                          ), // icon is 48px widget.
                        ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty || value.length < 8) {
                          return 'Please enter at least 8 characters';
                        }
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),
                  ),
                  if (!_login)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        key: ValueKey('phoneNumber'),
                        autocorrect: false,
                        textCapitalization: TextCapitalization.none,
                        enableSuggestions: false,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Phone number',
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Icon(
                              Icons.phone,
                              color: Colors.black,
                            ), // icon is 48px widget.
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your phone number';
                          }
                        },
                        onSaved: (value) {
                          _phoneNumber = value!;
                        },
                      ),
                    ),
                  if (!_login)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        key: const ValueKey('address'),
                        autocorrect: false,
                        textCapitalization: TextCapitalization.none,
                        enableSuggestions: false,
                        decoration: const InputDecoration(
                          labelText: 'Address',
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.black,
                            ), // icon is 48px widget.
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your address';
                          }
                        },
                        onSaved: (value) {
                          _phoneNumber = value!;
                        },
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),


                    child: ElevatedButton(onPressed: () {
                      _submitForm();
                    },
                        child: Text(_login ? "Sign in" : "Sign up",
                          style: const TextStyle(fontSize: 20),)),
                  ),



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed: () {
                      setState(() {
                        _login = !_login;
                      });
                    },
                        child: Text(_login ? "Create new account" : "I have an account",
                          style: const TextStyle(fontSize: 20),)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
