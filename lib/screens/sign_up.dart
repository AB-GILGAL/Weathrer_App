import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "GROCERY",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    Text(
                      "MART",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Text(
                      "Creat Account",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.04,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[900],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[900],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015,
                  bottom: MediaQuery.of(context).size.height * 0.025,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Phone Number",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[900],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015,
                  bottom: MediaQuery.of(context).size.height * 0.025,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[900],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015,
                  bottom: MediaQuery.of(context).size.height * 0.05,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const HomePage();
                      },
                    ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.015,
                      horizontal: MediaQuery.of(context).size.width * 0.25,
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By clicking Sign up you agree to the ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Terms",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        fontWeight: FontWeight.w500,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  Text(
                    " & ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Privacy Policy.",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        fontWeight: FontWeight.w500,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
