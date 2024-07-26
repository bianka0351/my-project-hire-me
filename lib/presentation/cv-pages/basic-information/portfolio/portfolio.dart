import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
   Portfolio({super.key});
  final TextEditingController facebookController = TextEditingController();
  final TextEditingController instagramController = TextEditingController();
  final TextEditingController githubController = TextEditingController();
  final TextEditingController behanceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color(0xff2c2f34),
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
              decoration: const BoxDecoration(
                  // gradient: LinearGradient(
                  //     begin: Alignment.topLeft,
                  //     end: Alignment.bottomRight,
                  //     colors: [Color(0xff3a5d93), Color(0xffe7895e)])
                  color: Color(0xff3a5d93)),
              child: Center(
                child: Image.asset(
                  'assets/images/logo_name1.png',
                  height: 120,
                  width: 150,
                ),
              ),
            ),
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.folder_copy_outlined,
                color: Color(0xffe7895e),
                size: 30,
              ),
              SizedBox(width: 5),
              Text(
                'Portfolio ',
                style: TextStyle(fontSize: 25, color: Color(0xffe7895e)),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Adding your jobs and your social media links help\ncompanies to know more about you',
              textAlign:TextAlign.center ,
              style: TextStyle(fontSize: 15, color: Color(0xffe7895e)),
            ),
          ),
          const SizedBox(
            height: 50,
          ),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    children: [
      textFormFieldWidget(controller: facebookController, label: 'Facebook'),
      textFormFieldWidget(controller: instagramController, label: 'Instagram'),
      textFormFieldWidget(controller: githubController, label: 'Github'),
      textFormFieldWidget(controller: behanceController, label: 'Behance'),
    ],
  ),
),
          const SizedBox(
            height: 60,
          ),
          button(
              text: 'Save',
              onpressed: () {

              })
        ]


        )

    );
  }
}

class AppbarCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();

    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
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
// gradient: LinearGradient(
//     begin: Alignment.topLeft,
//     end: Alignment.bottomRight,
//     colors: [Color(0xff3a5d93), Color(0xffe7895e)])
color: const Color(0xffe7895e)),
clipBehavior: Clip.antiAlias,
child: MaterialButton(
onPressed: onpressed,
height: 40,
minWidth: 320,
child: Text(
text,
style: const TextStyle(
fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
),
),
);
}