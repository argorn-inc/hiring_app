import 'package:flutter/material.dart';
import 'package:hiring_platform/home_screen.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int controllerState = 0;
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFF000000),
        child: Stack(
          children: [
            // Image.asset(
            //   "lib/assets/bgcolor.png",
            //   fit: BoxFit.cover,
            //   height: MediaQuery.of(context).size.height,
            // ),
            Positioned(
              right: MediaQuery.of(context).size.width * 0.05,
              top: MediaQuery.of(context).size.height * 0.05,
              child: TextButton(
                  onPressed: () {
                    print('Im working');
                  },
                  child: const Text(
                    "SKIP",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1,
                      left: MediaQuery.of(context).size.width * 0.01,
                      bottom: MediaQuery.of(context).size.height * 0.03),
                  child: Image.asset(
                    'lib/assets/bg.png',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "The Better Way \nFor Job Hunting",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.001),
                    child: Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      // color: Colors.amber,
                      height: 100,
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: PageView(
                        onPageChanged: (value) {
                          print(value);
                          setState(() {
                            controllerState = value;
                          });
                        },
                        controller: controller,
                        children: [
                          Container(
                            child: const Text(
                              "A filter with many options will help you find your dream job quickly and easily",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            child: const Text(
                              "page 2",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Container(
                            child: const Text(
                              "page 3",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: controllerState == 0
                              ? Colors.amber
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      height: 10,
                      width: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: controllerState == 1
                              ? Colors.amber
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      height: 10,
                      width: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: controllerState == 2
                              ? Colors.amber
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      height: 10,
                      width: 10,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (controllerState > 0) {
                          setState(() {
                            controllerState--;
                          });
                        }
                        controller.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        height: 40,
                        width: 40,
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (controllerState < 3) {
                          setState(() {
                            controllerState++;
                          });
                        }

                        controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                        if (controllerState > 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        }
                      },
                      child: controllerState < 2
                          ? Container(
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 40,
                              width: 40,
                              child: const Icon(Icons.arrow_forward_ios),
                            )
                          : TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()));
                              },
                              child: const Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic),
                              )),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
