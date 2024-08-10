import 'package:flutter/material.dart';

import 'package:hireme/presentation/authentication/sign_up_company/sign_up.dart';

import 'package:hireme/presentation/authentication/sign_up_user/sign_up_basic_information.dart';

class SignUpUser extends StatelessWidget {
  SignUpUser({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff2c2f34),
        body: Column(children: [
          Stack(alignment: AlignmentDirectional.center, children: [
            ClipPath(
              clipper: ContainerClipper(),
              child: Container(
                  width: double.infinity,
                  height: 300,
                  color: const Color(0xff3a5d93)),
            ),
            ClipPath(
              clipper: ContainerClipper(),
              child: Container(
                width: double.infinity,
                height: 250,
                color: const Color(0xff3a5d93),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'you are welcome in',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/images/logo_name1.png',
                        width: 350,
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.lock, color: Color(0xffe7895e)),
                          SizedBox(width: 5),
                          Text('Account Information',
                              style: TextStyle(
                                  color: Color(0xffe7895e), fontSize: 18)),
                        ],
                      )
                    ])),
          ]),
          Expanded(
              flex: 2,
              child: Stack(children: [
                Container(
                  color: const Color(0xff2c2f34),
                ),
                Padding(
                    padding: const EdgeInsets.all(35),
                    child: SingleChildScrollView(
                        child: Form(
                      key: _formKey,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            companyemployeewidget(
                              text: 'COMPANY',
                              icon: Icons.apartment,
                              ontap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpCompany()));
                              },
                              color: const Color(0xffa6c5fe),
                            ),
                            companyemployeewidget(
                              text: 'EMPLOYEE',
                              icon: Icons.person,
                              ontap: () {},
                              color: const Color(0xffe7895e),
                            )
                          ],
                        ),
                        const SizedBox(height: 45),
                        textFormFieldWidget(
                          controller: userNameController,
                          label: 'User Name',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your user name';
                            }
                            return null;
                          },
                        ),
                        textFormFieldWidget(
                          controller: passwordController,
                          label: 'Password',
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters long';
                            }
                            if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
                              return 'Password must contain at least one number';
                            }
                            if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
                              return 'Password must contain at least one uppercase letter';
                            }
                            if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
                              return 'Password must contain at least one lowercase letter';
                            }
                            if (!RegExp(r'(?=.*[!@#$&*~])').hasMatch(value)) {
                              return 'Password must contain at least one special character';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 45),
                        button(
                            text: 'Create an account',
                            onPressed: () {if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SignUpBasicInformationUser(
                                            userNameController:
                                                userNameController.text,
                                            passwordController:
                                                passwordController.text,
                                          )));}
                            })
                      ]),
                    )))
              ]))
        ]));
  }
}

Widget textFormFieldWidget({
  required TextEditingController controller,
  required String label,
  bool obscureText = false,
  TextInputType keyboardType = TextInputType.text,
  required String? Function(String?) validator,
}) {
  return Column(
    children: [
      TextFormField(
        style: const TextStyle(color: Colors.white),
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        decoration: InputDecoration(
          label: Text(label),
          labelStyle: const TextStyle(
            color: Color(0xffa6c5fe),
          ),
          filled: true,
          fillColor: const Color(0xff1b1b1b),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffa6c5fe),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffe7895e),
            ),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          errorBorder: const OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}

Widget button({
  required String text,
  required Function() onPressed,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: const Color(0xffe7895e),
    ),
    clipBehavior: Clip.antiAlias,
    child: MaterialButton(
      onPressed: onPressed,
      height: 55,
      minWidth: 320,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget companyemployeewidget({
  required String text,
  required IconData icon,
  required Function() ontap,
  required Color color,
}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: color,
          ),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 15),
          )
        ],
      ),
    ),
  );
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 40);
    path.quadraticBezierTo(width / 2, height, width, height - 40);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
