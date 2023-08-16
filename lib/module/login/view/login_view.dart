import 'package:flutter/material.dart';
import '../../../responsive.dart';
import '../../utils/widget/form.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

      return Scaffold(
      body: Center(
        child: Container(
          width: Responsive.isDesktop(context)
              ? 800
              : Responsive.isTablet(context)
                  ? 500
                  : MediaQuery.of(context).size.width * 0.9,
          height: Responsive.isDesktop(context)
              ? 600
              : Responsive.isTablet(context)
                  ? 700
                  : null, // Set height based on your design
          decoration: BoxDecoration(
            // color: Colors.grey[400],
          ),
          child: Row(
            children: [
              if (Responsive.isDesktop(context) || Responsive.isTablet(context))
                Expanded(
                  flex: 4,
                  child: Container(
                    // color: Colors.grey[500],
                    child: Image.asset(
                    "assets/ilustrasi.png",
                    ),
                  ),
                ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "FUNDAYCARE",
                            style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            "welcome",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                          Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    FormText(
                      hintText: "Email",
                      obscureText: false,
                      onPressed: (value) {
                        controller.email = value;
                      },
                    ),
                    SizedBox(height: 10.0),
                    FormText(
                      hintText: "Password",
                      obscureText: controller.obscureState,
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.visibilitySt();
                        },
                        icon: Icon(
                          controller.obscureState
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                      onPressed: (value) {
                        controller.password = value;
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "forgot password",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: RichText(
                          text: TextSpan(
                            text: "don't have an account yet? ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                            children: [
                              TextSpan(
                                text: "Sign Up",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
