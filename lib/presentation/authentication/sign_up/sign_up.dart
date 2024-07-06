import 'package:flutter/material.dart';
import 'package:hireme/presentation/authentication/sign_up/sign_up_basic_information.dart';
class SignUp extends StatelessWidget {
  SignUp({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(alignment: AlignmentDirectional.center, children: [
        Container(
          width: double.infinity,
          height: 300,
          color: const Color(0xff3a5d93),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 50),
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
                  const SizedBox(height: 30),
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
                    child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      companyemployeewidget(
                        text: 'COMPANY',
                        icon: Icons.apartment,
                        ontap: () {

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
                      controller: userNameController, label: 'User Name'),
                  textFormFieldWidget(
                      controller: passwordController, label: 'Password'),
                  const SizedBox(height:45),
                  button(
                      text: 'Create an account',
                      onpressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpBasicInformation()));
                      })
                ])))
          ]))
    ]));
  }
}

Widget textFormFieldWidget(
    {required TextEditingController controller, required String label}) {
  return Column(
    children: [
      TextFormField(
        style: const TextStyle(color: Colors.white),
        controller: controller,
        validator: (v) {
          if (!(v!.contains('@'))) {
            return 'please enter a valid';
          }
          return null;
        },
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
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffe7895e),
              ),
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ),
      ),
      const SizedBox(
        height: 20,
      )
    ],
  );
}

Widget button({required String text, required, required Function() onpressed}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
gradient: LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: [Color(0xff3a5d93), Color(0xffe7895e)])
    ),
    clipBehavior: Clip.antiAlias,
    child: MaterialButton(
      onPressed: onpressed,
      height: 55,
      minWidth: 320,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
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
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
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
