import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/languages/language-class.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/languages/main_text_field.dart';


class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  List<Language> languages = [];

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
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Column(
            children: [
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.language_outlined,
                    color: Color(0xffe7895e),
                    size: 30,
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Languages ',
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
                  'Adding all Languages will increase your chances to get the best job ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Color(0xffe7895e)),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
          Expanded(

            child: Container(
              height: 250,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xff1b1b1b),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Languages',
                          style: TextStyle(color: Color(0xffa6c5fe), fontSize: 20),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              foregroundColor: Color(0xff2c2f34),
                              backgroundColor: const Color(0xffe7895e),
                              shape: const CircleBorder()),
                          onPressed: () {
                            TextEditingController controller = TextEditingController();
                            double rating = 3.0; // Default rating
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    child: Container(
                                      height: 250,
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      decoration: BoxDecoration(
                                          color: Color(0xff2c2f34),
                                          borderRadius: BorderRadius.circular(25)),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          MainTextFormField(
                                            controller: controller,
                                          ),
                                          const SizedBox(height: 20),
                                          RatingBar.builder(
                                            itemSize: 30,
                                            initialRating: rating,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                            itemBuilder: (context, _) => const Icon(
                                              Icons.star,
                                              color:  Color(0xffe7895e),
                                            ),
                                            onRatingUpdate: (newRating) {
                                              rating = newRating;
                                            },
                                          ),
                                          const SizedBox(height: 20),
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                languages.add(Language(
                                                    title: controller.text, rating: rating));
                                              });
                                              Navigator.pop(context);
                                            },
                                            child: const Text(
                                              'Save',
                                              style: TextStyle(color: Colors.white, fontSize: 20),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: const Icon(Icons.add, color: Colors.white),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0xffe7895e), indent: 1, endIndent: 180),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          child: ListView.builder(
                            itemCount: languages.length,
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onLongPress: () {
                                  setState(() {
                                    languages.removeAt(index);
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      languages[index].title,
                                      style: TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                    RatingBarIndicator(
                                      rating: languages[index].rating,
                                      itemBuilder: (context, index) => const Icon(
                                        Icons.star,
                                        color: Color(0xffe7895e) ,
                                      ),
                                      itemCount: 5,
                                      itemSize: 17,
                                      direction: Axis.horizontal,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 200)
        ]));
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
