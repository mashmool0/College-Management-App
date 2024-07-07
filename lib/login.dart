import 'package:flutter/material.dart';
import 'home.dart';
import 'signup.dart';// Import the Home page file

class LoginPage extends StatelessWidget {
  TextEditingController student_id = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 80),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/university_logo.jpg',
                    height: 200,
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'خوش آمدید',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'وارد حساب کاربری خود شوید',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: student_id,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    labelText: ' شماره دانشجویی / نام کاربری                               ',
                    alignLabelWithHint: true,
                    hintText: 'شماره دانشجویی یا نام کاربری خود را وارد کنید',
                    filled: true,
                    fillColor: Colors.grey[200], // Background color
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Icon(Icons.email, color: Colors.grey), // Icon on the right
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  controller: password,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    labelText: 'رمز عبور                                                    ',
                    alignLabelWithHint: true,
                    hintText: 'رمز عبور خود را وارد نمایید',
                    filled: true,
                    fillColor: Colors.grey[200], // Background color
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Icon(Icons.lock, color: Colors.grey), // Icon on the right
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo),
                  ),
                  onPressed: () {
                    // Simulate successful login for demonstration
                    bool isLoggedIn = true;

                    if (isLoggedIn) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()), // Navigate to HomePage instead of ProfilePage
                      );
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    child: Text(
                      'ورود',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text(
                    'حساب کاربری ندارید؟ ثبت نام کنید',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
