import 'package:flutter/material.dart';
import 'package:hireme/presentation/home_layout_screen.dart';



class SignUpBasicInformationCompany extends StatefulWidget {
  @override
  _SignUpBasicInformationCompanyState createState() => _SignUpBasicInformationCompanyState();
}

class _SignUpBasicInformationCompanyState extends State<SignUpBasicInformationCompany> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Controllers

  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController branchController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff2c2f34) ,
      body: Column(
        children: [

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

                    ])),
          ]),
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  color: const Color(0xff2c2f34),
                ),
                Padding(
                  padding: const EdgeInsets.all(35),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                                                   textFormFieldWidget(
                            controller: companyNameController,
                            label: 'Company Name',
                            validator: (value) {
                              if (value == null  || value.isEmpty) {
                                return 'Please enter the company name';
                              }
                              return null;
                            },
                          ),
                          textFormFieldWidget(
                            controller: branchController,
                            label: 'Branch',
                            validator: (value) {
                              if (value == null  || value.isEmpty) {
                                return 'Please enter the branch';
                              }
                              return null;
                            },
                          ),
                          textFormFieldWidget(
                            controller: addressController,
                            label: 'Address',
                            validator: (value) {
                              if (value == null   || value.isEmpty) {
                                return 'Please enter the address';
                              }
                              return null;
                            },
                          ),
                          textFormFieldWidget(
                            controller: phoneNumberController,
                            label: 'Phone Number',
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null  || value.isEmpty) {
                                return 'Please enter the phone number';
                              }
                              if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                                return 'Please enter a valid 10-digit phone number';
                              }
                              return null;
                            },
                          ),
                          textFormFieldWidget(
                            controller: emailController,
                            label: 'Email',
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                          ),

                          button(
                            text: 'continue',
                            onPressed: () {
                              if (_formKey.currentState!.validate() ) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HomeLayoutScreen())
                                );
                              }
                            },
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
    );
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
          errorBorder:  OutlineInputBorder(),
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
      color: Color(0xffe7895e),
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
