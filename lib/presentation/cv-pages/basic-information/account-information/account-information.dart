import 'package:flutter/material.dart';

class AccountInformation extends StatelessWidget {
  AccountInformation({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_outline,
                color: Color(0xffe7895e),
                size: 30,
              ),
              SizedBox(width: 5),
              Text(
                'Account Information ',
                style: TextStyle(fontSize: 25, color: Color(0xffe7895e)),
              )
            ],
          ),
          const SizedBox(height: 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'You UserName is :',
                style: TextStyle(fontSize: 20, color: Color(0xffa6c5fe)),
              ),
              const Text('    Bianka Hmmo',
                  style: TextStyle(fontSize: 20, color: Color(0xffa6c5fe))),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Color(0xff2c2f34),
                            content: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Color(0xffe7895e),
                                        size: 25,
                                      ),
                                      Text(
                                        ' User Name',
                                        style: TextStyle(
                                            color: Color(0xffe7895e),
                                            fontSize: 20),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    height: 50,
                                    child: TextFormField(
                                      style:
                                          const TextStyle(color: Colors.white),
                                      controller: userNameController,
                                      validator: (v) {
                                        if (!(v!.contains('@'))) {
                                          return 'please enter a valid';
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        label: Text('User Name'),
                                        labelStyle: TextStyle(
                                          color: Color(0xffa6c5fe),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xff1b1b1b),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xffa6c5fe),
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xffe7895e),
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xffe7895e)),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Save',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  child: const Text('Edit',
                      style: TextStyle(fontSize: 20, color: Color(0xffe7895e))))
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'You Password is :',
                style: TextStyle(fontSize: 20, color: Color(0xffa6c5fe)),
              ),
              const Text('    12345678',
                  style: TextStyle(fontSize: 20, color: Color(0xffa6c5fe))),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Color(0xff2c2f34),
                            content: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.lock_open,
                                        color: Color(0xffe7895e),
                                        size: 25,
                                      ),
                                      Text(
                                        ' Password',
                                        style: TextStyle(
                                            color: Color(0xffe7895e),
                                            fontSize: 20),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    height: 50,
                                    child: TextFormField(
                                      style:
                                          const TextStyle(color: Colors.white),
                                      controller: passwordController,
                                      validator: (v) {
                                        if (!(v!.contains('@'))) {
                                          return 'please enter a valid';
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        label: Text('Password'),
                                        labelStyle: TextStyle(
                                          color: Color(0xffa6c5fe),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xff1b1b1b),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xffa6c5fe),
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xffe7895e),
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xffe7895e)),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Save',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  child: const Text('Edit',
                      style: TextStyle(fontSize: 20, color: Color(0xffe7895e))))
            ],
          ),
        ],
      ),
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
