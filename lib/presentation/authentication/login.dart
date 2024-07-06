import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hireme/presentation/authentication/sign_up/sign_up.dart';


// ignore: must_be_immutable
class LogIn extends StatelessWidget {
  LogIn({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/background_without_name.jpg'),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromRGBO(255, 255, 255, 250),
        ),
        BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/logo_name1.png',
                    height: 150,
                    width: 350,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 450,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color(0xff2c2f34),
                        borderRadius: BorderRadius.circular(15)),
                    child: Form(
                      key: formState,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              textFormField(
                                  controller: userNameController,
                                  label: 'User Name'),
                              const SizedBox(
                                height: 30,
                              ),
                              textFormField(
                                  controller: passwordController,
                                  label: 'Password'),
                              const SizedBox(
                                height: 60,
                              ),
                              button(
                                  text: 'Sign In',
                                  onpressed: () {
                                    if (formState.currentState!.validate()) {
                                    } else {}
                                  }),
                              const SizedBox(
                                height: 40,
                              ),
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 17, right: 17),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Divider(
                                        thickness: 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Or',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Divider(
                                        thickness: 2,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Do Not Have An Account?',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              button(
                                  text: 'Sign Up',
                                  onpressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>  SignUp()));
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
      ],
    ));
  }
}

Widget textFormField(
    {required TextEditingController controller, required String label}) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter a valid';
      }
      return null;
    },
    cursorColor: Colors.white,
    controller: controller,
    decoration: InputDecoration(
        hintText: label,
        hintStyle: const TextStyle(color: Colors.white, fontSize: 15)),
  );
}

Widget button({required String text, required, required Function() onpressed}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
gradient: LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: [Color(0xff3a5d93), Color(0xffe7895e)])
    ),
    clipBehavior: Clip.antiAlias,
    child: MaterialButton(
      onPressed: onpressed,
      height: 40,
      minWidth: 230,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
  );
}
