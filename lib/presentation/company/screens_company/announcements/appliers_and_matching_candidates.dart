import 'package:flutter/material.dart';
import 'package:hireme/presentation/company/home_layout_screen_company.dart';
import 'package:hireme/presentation/company/screens_company/announcements/appliers.dart';
import 'package:hireme/presentation/company/screens_company/announcements/matching_candidates.dart';

class AppliersAndMatchingCandidates extends StatelessWidget {
  const AppliersAndMatchingCandidates({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff2c2f34),
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Builder(
                  builder: (context) => IconButton(
                        onPressed: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                        icon: const Icon(Icons.home),
                        color: Colors.white,
                      )),
            ),
          ],
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
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TabBar(
           dividerColor: Color(0xff2c2f34),
              tabAlignment: TabAlignment.center,
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              labelColor: Color(0xffe7895e),
              unselectedLabelColor: Colors.white,
              indicatorColor: Color(0xffe7895e),
              tabs: [
                Tab(text: 'Appliers'),
                Tab(text: 'Matching Candidates'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [Appliers(), MatchingCandidates()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget button({
  required String text,
  required Function() onPressed,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: const Color(0xff1b1b1b),
      border: const Border(
        right: BorderSide(color: Color(0xffe7895e), width: 10),
      ),
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
