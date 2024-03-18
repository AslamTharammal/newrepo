import 'package:flutter/material.dart';

import 'homePage.dart';

class TextFeildDetails extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        color: Colors.orange[200],
        height: 501.5,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Loging',
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, right: 17, top: 18),
              child: TextFormField(
                controller: username,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(34, 43, 54, 2),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.brown, fontSize: 18),
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.brown,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "Please Enter Your Username";
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, right: 17, top: 20),
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(34, 43, 54, 2),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.brown, fontSize: 18),
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.brown,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.brown,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "Please Enter Your Password";
                  else if (value.length < 8)
                    return 'Password Must Have 8+ Charecters';
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    String username1 = username.text;
                    String password1 = password.text;

                    print("Username:$username1");
                    print("Password:$password1");

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.orange[200], fontSize: 28),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(325, 60),
                    backgroundColor: Color.fromARGB(34, 43, 54, 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65, top: 120),
              child: Row(
                children: [
                  const Text("Don't have account?",
                      style: TextStyle(fontSize: 18, color: Colors.brown)),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(Colors.orange[200])
                    ),
                    child: Text("Sign Up",
                        style:
                            TextStyle(color: Colors.brown[400], fontSize: 20)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
