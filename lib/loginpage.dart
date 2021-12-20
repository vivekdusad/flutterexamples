import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHidden = true;
  late FocusNode focusNode;
  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/login.png"),
                const SizedBox(
                  height: 80,
                ),
                // const Center(
                //   child: Text(
                //     "Login",
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 22,
                //       fontWeight: FontWeight.w600,
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                FadeInUp(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: TextField(
                      // keyboardType: TextInputType.,
                      focusNode: focusNode,
                      onTap: () {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        prefixIcon: const Icon(Icons.mail),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeInUp(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: TextField(
                      obscureText: isHidden,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        prefixIcon: const Icon(Icons.security),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isHidden = !isHidden;
                            });
                          },

                          /// This is Magical Function
                          child: Icon(
                            isHidden
                                ?

                                /// CHeck Show & Hide.
                                Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                FadeInUp(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.black,
                            // fontSize: 18,
                            // fontWeight: FontWeight.w600,
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInUp(
                  child: Center(
                    child: RawMaterialButton(
                      onPressed: () {},
                      fillColor: Colors.black,
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                FadeInUp(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "New Here?",
                          style: TextStyle(
                            color: Colors.black,
                            // fontSize: 18,
                            // fontWeight: FontWeight.w600,
                          ),
                        )),
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
