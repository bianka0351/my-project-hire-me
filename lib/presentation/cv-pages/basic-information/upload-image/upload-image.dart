import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadImage extends StatefulWidget {
   UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
     File? image  ;
  final imagepicker=ImagePicker();
  uploadImage()async{
    var pickedImage=await imagepicker.pickImage(source: ImageSource.camera);
    if(pickedImage!=null){
   setState(() {
     image =File(pickedImage.path);
   });
  }else{}
  }

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
        body: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Color(0xffe7895e),
                        size: 35,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Upload Image ',
                        style:
                            TextStyle(fontSize: 25, color: Color(0xffe7895e)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Uploading your image help companies to know more about you',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Color(0xffe7895e)),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff1b1b1b),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        image==null?Text('Not choosen image',style: TextStyle(color: Color(0xffa6c5fe), ),): Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),

                            ),
                            child: Image.file(image!)),
                        TextButton(
                          onPressed: () {
                            uploadImage();
                          },
                          child: Text(
                            'Click here to upload',
                            style:
                                TextStyle(color: Color(0xffa6c5fe), fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 90),
                  button(
                      text: 'Save',
                      onpressed: () {

                      })
                ]
            )
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