import 'package:flutter/material.dart';


import 'package:hireme/presentation/company/screens_company/candidates/candidates_details.dart';

class Appliers extends StatelessWidget {
  const Appliers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2f34),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CandidatesDetails()),
                    );
                  },
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff1b1b1b),
                      border: const Border(
                        right: BorderSide(
                          color: Color(0xffe7895e),
                          width: 5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/personal_image.jpg',
                              ),
                              backgroundColor: Color(0xff3a5d93),
                              radius: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bianka Hmmo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'bianka@gmail.com',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            button(text: 'Reject', onPressed: () {}),
                            const SizedBox(width: 10),
                            button(text: 'Accept', onPressed: () {}),
                            const SizedBox(width: 10),
                            button(
                              text: 'Interview',
                              onPressed: () {
                                showInterviewDialog(context);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}

void showInterviewDialog(BuildContext context) {
  final messageController = TextEditingController();
  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final addressController = TextEditingController();

  showDialog(

    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor:const Color(0xff2c2f34) ,
        title: const Text('Interview Details',style: TextStyle(color:Color(0xffe7895e) ),),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                style: const TextStyle(color: Colors.white),
                controller: messageController,
                decoration: const InputDecoration(
                  labelText: 'Message',
                  labelStyle: TextStyle(color:Color(0xffa6c5fe),),
                ),
              ),
              TextField(
                style: const TextStyle(color: Colors.white),
                controller: dateController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Date',
                  labelStyle: TextStyle(color: Color(0xffa6c5fe),),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    dateController.text = pickedDate.toString().substring(0, 10);
                  }
                },
              ),
              TextField(
                style: const TextStyle(color: Colors.white),
                controller: timeController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Time',
                  labelStyle: TextStyle(color: Color(0xffa6c5fe)),
                ),
                onTap: () async {
                  TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (pickedTime != null) {
                    timeController.text = pickedTime.format(context);
                  }
                },
              ),
              TextField(
                style: const TextStyle(color: Colors.white),
                controller: addressController,
                decoration: const InputDecoration(
                  labelText: 'Address',
                  labelStyle: TextStyle(color: Color(0xffa6c5fe),),
                ),
              ),
            ],
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              // Handle sending data
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffe7895e),
            ),
            child: const Text('Send',style: TextStyle(color: Colors.white),),
          ),
        ],
      );
    },
  );
}


Widget button({
  required String text,
  required Function() onPressed,
}) {
  return Container(
    height: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: const Color(0xffe7895e),
    ),
    child: MaterialButton(
      onPressed: onPressed,
      minWidth: 80,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}
