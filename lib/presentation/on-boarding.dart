import 'package:flutter/material.dart';
import 'package:hireme/presentation/authentication/login.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final List<OnboardingData> data = [
    OnboardingData(
      img1: 'assets/images/teamwork.png',
      text1: 'Companies',
      text2:
      'Welcome to our company’s page! We are thrilled to have you here and share with you our story, values, and what makes us unique. As we continue to grow and evolve, we remain focused on achieving new milestones and making a positive impact. We invite you to explore our website. Whether you are a potential customer, partner, or simply curious about what we do, we are excited to connect with you and explore how we can work together.',
    ),
    OnboardingData(
      img1: 'assets/images/applying a job.gif',
      text1: 'Looking for a Job?',
      text2:
      'When applying for a job via a CV, it is important to make a strong first impression. Your CV serves as your personal marketing tool, showcasing your skills, experience, and qualifications to potential employers. It is your opportunity to highlight what makes you a great fit for the role and the company. Remember, your CV is your chance to make a compelling case for why you are the ideal candidate for the job. Make it count!',
    ),
  ];

  final PageController controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3a5d93),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'assets/images/Rectangle 22-1.png', // Your background image
            fit: BoxFit.fill,
            width: double.infinity,
            height: 450,
          ),
          // Foreground content
          Column(
            children: [
              Expanded(
                child:
                PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller,
                  itemCount: data.length,
                  onPageChanged: (int pageIndex) {
                    setState(() {
                      index = pageIndex;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          data[index].img1,
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(height: 40),
                        Text(
                          data[index].text1,
                          style: const TextStyle(
                            fontSize: 35,
                            color: Color(0xffe7895e),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Text(
                            data[index].text2,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  data.length,
                      (indexDots) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: index == indexDots ? 10 : 8,
                    height: index == indexDots ? 10 : 8,
                    decoration: BoxDecoration(
                      color:
                      index == indexDots ? const Color(0xffe7895e) : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  if (index < data.length - 1) {
                    setState(() {
                      index++;
                    });
                    controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn,
                    );
                  } else {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => LogIn()));
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffe7895e),
                  ),
                  child: Text(
                    index == data.length - 1 ? 'GET STARTED' : 'NEXT',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}

class OnboardingData {
  final String img1;

  final String text1;
  final String text2;

  OnboardingData(
      {required this.img1, required this.text1, required this.text2});
}
