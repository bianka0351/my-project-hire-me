import 'package:flutter/material.dart';
import 'package:hireme/presentation/company/home_layout_screen_company.dart';

class EditCompanyInformation extends StatefulWidget {
  const EditCompanyInformation({super.key});

  @override
  State<EditCompanyInformation> createState() => _EditCompanyInformationState();
}

class _EditCompanyInformationState extends State<EditCompanyInformation> {
  // Controllers

  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController branchController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2c2f34),
      appBar: AppBar(
        toolbarHeight: 110,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff2c2f34),
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: AppbarCustomClipper(),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Color(0xff3a5d93)),
            child: Center(
              child: Image.asset(
                'assets/images/logo_name1.png',
                height: 120,
                width: 180,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_balance,
                color: Color(0xffe7895e),
                size: 35,
              ),
              SizedBox(width: 5),
              Text(
                'Company Information ',
                style: TextStyle(fontSize: 25, color: Color(0xffe7895e)),
              )
            ],
          ),
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
                    child: Column(
                      children: [
                        textFormFieldWidget(controller: userNameController, label: 'Uesr Name '),
                        textFormFieldWidget(controller: passwordController, label: 'Password'),
                        textFormFieldWidget(
                          controller: companyNameController,
                          label: 'Company Name',
                        ),
                        textFormFieldWidget(
                          controller: branchController,
                          label: 'Branch',
                        ),
                        textFormFieldWidget(
                          controller: addressController,
                          label: 'Address',
                        ),
                        textFormFieldWidget(
                          controller: phoneNumberController,
                          label: 'Phone Number',
                          keyboardType: TextInputType.phone,
                        ),
                        textFormFieldWidget(
                          controller: emailController,
                          label: 'Email',
                          keyboardType: TextInputType.emailAddress,
                        ),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: button(text: 'Save', onPressed: (){}),
          )
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
}) {
  return Column(
    children: [
      TextFormField(
        style: const TextStyle(color: Colors.white),
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
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
          errorBorder: OutlineInputBorder(),
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
      height: 50,
      minWidth: 300,
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
