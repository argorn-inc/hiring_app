import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: [
                    TextFormField(
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.2)),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 0.2),
                        ),
                        hintText: 'Position, company',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        prefixIconColor: Colors.white,
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.filter_list,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          labelTag("UI/UX Designer", 0.35),
                          labelTag("Product Designer", 0.35),
                          labelTag("Web Designer", 0.35),
                          labelTag("Software Engineer", 0.35)
                        ],
                      ),
                    )
                  ]),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.25,
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1,
                    left: MediaQuery.of(context).size.width * 0.08,
                  ),
                  decoration: const BoxDecoration(
                      color: Color(0xffe5e9ec),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Top Companies",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Container(
                        height: 170,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            companyCard(Icons.facebook, "Facebook", 18),
                            companyCard(Icons.apple, "Apple", 24),
                            companyCard(Icons.architecture, "Meqasa", 24),
                            companyCard(Icons.auto_graph_rounded, "FixR", 11)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Recommended for You',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              recommend(),
                              recommend(),
                              recommend(),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.15,
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
                child: Container(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 100),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Fill In Your Resume",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                            "Get more attention and better chance of finding a great job")
                      ]),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.black,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        menuItem(Icons.home),
                        menuItem(Icons.favorite_border_outlined),
                        menuItem(Icons.message_outlined),
                        menuItem(Icons.person),
                      ]),
                ),
              )
            ],
          )),
    );
  }

  Widget labelTag(String labelText, double width) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      margin: const EdgeInsets.all(10),
      height: 70,
      width: MediaQuery.of(context).size.width * width,
      decoration: const BoxDecoration(
          color: Color(0xffa5a8ae),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Text(
        labelText,
        style: const TextStyle(color: Colors.white, fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget companyCard(IconData companyIcon, String companyName, int vacancies) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      padding: const EdgeInsets.all(8),
      height: 120,
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: const BoxDecoration(
        color: Color(0xffa5a8ae),
        borderRadius: BorderRadius.all(
          Radius.circular(
            15,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            companyIcon,
            size: 50,
          ),
          Text(
            companyName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(vacancies.toString() + " vacancies"),
        ],
      ),
    );
  }

  Widget recommend() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      // height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          (Radius.circular(15)),
        ),
        color: Colors.transparent,
        border: Border.all(color: Colors.black, width: 0.5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.headphones,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              Column(
                children: [
                  const Text(
                    "Junior Designer",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      const Text("Airbit"),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            )),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.star,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("5.0"),
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: (() {}),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.12),
                  child: const Icon(
                    Icons.favorite_border_outlined,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 50,
            child: Row(
              children: [
                labelTag("\$50-115K", 0.2),
                labelTag("Remote", 0.2),
                labelTag("Full-time", 0.2),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget menuItem(IconData itemIcon) {
    return GestureDetector(
      onTap: () {},
      child: Icon(
        itemIcon,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
