// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
//
// class Skills extends StatefulWidget {
//
//
//   @override
//   _SkillsState createState() => _SkillsState();
// }
//
// class _SkillsState extends State<Skills> {
//   List<String> _entries = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _loadEntries();
//   }
//
//   Future<void> _loadEntries() async {
//     final prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _entries = prefs.getStringList('entries') ?? [];
//     });
//   }
//
//   Future<void> _deleteEntry(int index) async {
//     final prefs = await SharedPreferences.getInstance();
//     List<String> entries = prefs.getStringList('entries') ?? [];
//     entries.removeAt(index);
//     await prefs.setStringList('entries', entries);
//     setState(() {
//       _entries = entries;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff2c2f34),
//       appBar: AppBar(
//         toolbarHeight: 110,
//         automaticallyImplyLeading: false,
//         backgroundColor: const Color(0xff2c2f34),
//         elevation: 0.0,
//         flexibleSpace: ClipPath(
//           clipper: AppbarCustomClipper(),
//           child: Container(
//             height: 150,
//             width: MediaQuery.of(context).size.width,
//             decoration: const BoxDecoration(
//                 // gradient: LinearGradient(
//                 //     begin: Alignment.topLeft,
//                 //     end: Alignment.bottomRight,
//                 //     colors: [Color(0xff3a5d93), Color(0xffe7895e)])
//                 color: Color(0xff3a5d93)),
//             child: Center(
//               child: Image.asset(
//                 'assets/images/logo_name1.png',
//                 height: 120,
//                 width: 150,
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 20),
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.keyboard_alt_rounded,
//                 color: Color(0xffe7895e),
//                 size: 30,
//               ),
//               SizedBox(width: 15),
//               Text(
//                 'Skills ',
//                 style: TextStyle(fontSize: 25, color: Color(0xffe7895e)),
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 25),
//             child: Text(
//               'Adding all skills will increase your chances to get the best job ',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 15, color: Color(0xffe7895e)),
//             ),
//           ),
//           const SizedBox(height: 40),
//           Expanded(
//             child: Container(
//               margin: const EdgeInsets.all(16.0),
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.black38,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: ListView.builder(
//                 itemCount: _entries.length,
//                 itemBuilder: (context, index) {
//                   final entryParts = _entries[index].split(', ');
//                   return GestureDetector(
//                     onLongPress: () => _deleteEntry(index),
//                     child: Container(
//                       margin: const EdgeInsets.only(bottom: 16.0),
//                       padding: const EdgeInsets.all(16.0),
//                       decoration: BoxDecoration(
//                         color: Colors.black38,
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: entryParts.map((part) {
//                           final splitIndex = part.indexOf(': ');
//                           final label = part.substring(0, splitIndex + 1);
//                           final value = part.substring(splitIndex + 2);
//
//                           return RichText(
//                             text: TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text: label,
//                                   style: TextStyle(
//                                     color: Color(0xffe7895e),
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: ' ',
//                                 ),
//                                 TextSpan(
//                                   text: ' ',
//                                 ),
//                                 TextSpan(
//                                   text: value,
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                               ],
//                             ),
//                           );
//                         }).toList(),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => AddSkill()),
//                 ).then((_) => _loadEntries());
//               },
//               style: ElevatedButton.styleFrom(
//                 // primary: const Color(0xff3a5d93),
//                 // onPrimary: Colors.white,
//                 shape: CircleBorder(),
//                 minimumSize: Size(50, 50),
//               ),
//               child: Icon(Icons.add, size: 32),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class AddSkill extends StatefulWidget {
//   @override
//   _AddSkillState createState() => _AddSkillState();
// }
//
// class _AddSkillState extends State<AddSkill> {
//   final _formKey = GlobalKey<FormState>();
//   final _controller1 = TextEditingController();
//   final _controller2 = TextEditingController();
//   final _controller3 = TextEditingController();
//   String? _selectedJob;
//
//   Future<void> _saveEntry(String entry) async {
//     final prefs = await SharedPreferences.getInstance();
//     List<String> entries = prefs.getStringList('entries') ?? [];
//     entries.add(entry);
//     prefs.setStringList('entries', entries);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 110,
//         automaticallyImplyLeading: false,
//         backgroundColor: const Color(0xff2c2f34),
//         elevation: 0.0,
//         flexibleSpace: ClipPath(
//           clipper: AppbarCustomClipper(),
//           child: Container(
//             height: 150,
//             width: MediaQuery.of(context).size.width,
//             decoration: const BoxDecoration(
//
//                 color: Color(0xff3a5d93)),
//             child: Center(
//               child: Image.asset(
//                 'assets/images/logo_name1.png',
//                 height: 120,
//                 width: 150,
//               ),
//             ),
//           ),
//         ),
//       ),
//       backgroundColor: const Color(0xff2c2f34),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//                 Text(
//                   'Add a new skill',
//                   style: TextStyle(
//                     fontSize: 30,
//                     color: Color(0xffe7895e),
//                   ),
//                 ),
//                 SizedBox(height: 70),
//                 _buildTextFormField(_controller1, 'Enter a Skill'),
//                 const SizedBox(height: 15),
//                 _buildTextFormField(_controller2, 'Description'),
//                 const SizedBox(height: 15),
//                 _buildTextFormField(_controller3, 'Date Of Start'),
//                 const SizedBox(height: 15),
//                 _buildDropdown(),
//                 const SizedBox(height: 110),
//                 button(
//                   text: 'Add',
//                   onpressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       final entry =
//                           'Skill : ${_controller1.text}, Description : ${_controller2.text}, Date Of Start : ${_controller3.text}, Skill Nature : ${_selectedJob ?? ''}';
//                       _saveEntry(entry);
//                       Navigator.pop(context);
//                     }
//                   },
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTextFormField(
//       TextEditingController controller, String labelText) {
//     return TextFormField(
//       controller: controller,
//       decoration: InputDecoration(
//         enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Color(0xff3a5d93), width: 2.0),
//             borderRadius: BorderRadius.all(Radius.circular(20))),
//         focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Color(0xffe7895e),
//             ),
//             borderRadius: BorderRadius.all(Radius.circular(30))),
//         labelText: labelText,
//         labelStyle: const TextStyle(color: Colors.white),
//         border: const OutlineInputBorder(),
//       ),
//       style: const TextStyle(color: Colors.white),
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please enter some text';
//         }
//         return null;
//       },
//     );
//   }
//
//   Widget _buildDropdown() {
//     return DropdownButtonFormField<String>(
//       dropdownColor: const Color(0xff1b1b1b),
//       style: const TextStyle(color: Colors.white),
//       hint: const Text(
//         'Skill Nature',
//         style: TextStyle(color: Colors.white, fontSize: 17),
//       ),
//       items: ["Software Engineer", 'IT Engineer', 'Graphic Designer']
//           .map((e) => DropdownMenuItem(
//                 value: e,
//                 child: Text(e),
//               ))
//           .toList(),
//       onChanged: (val) {
//         setState(() {
//           _selectedJob = val;
//         });
//       },
//       value: _selectedJob,
//       decoration: const InputDecoration(
//         fillColor: Color(0xff1b1b1b),
//         enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Color(0xff3a5d93),
//               width: 2,
//             ),
//             borderRadius: BorderRadius.all(Radius.circular(20))),
//         focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Color(0xffe7895e),
//             ),
//             borderRadius: BorderRadius.all(Radius.circular(30))),
//       ),
//     );
//   }
// }
//
// class AppbarCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double height = size.height;
//     double width = size.width;
//     var path = Path();
//     path.lineTo(0, height - 50);
//     path.quadraticBezierTo(width / 2, height, width, height - 50);
//     path.lineTo(width, 0);
//     path.close();
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;
// }
//
// Widget button({required String text, required, required Function() onpressed}) {
//   return Container(
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
// // gradient: LinearGradient(
// //     begin: Alignment.topLeft,
// //     end: Alignment.bottomRight,
// //     colors: [Color(0xff3a5d93), Color(0xffe7895e)])
//         color: const Color(0xffe7895e)),
//     clipBehavior: Clip.antiAlias,
//     child: MaterialButton(
//       onPressed: onpressed,
//       height: 40,
//       minWidth: 320,
//       child: Text(
//         text,
//         style: const TextStyle(
//             fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//       ),
//     ),
//   );
// }
