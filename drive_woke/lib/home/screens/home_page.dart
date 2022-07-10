import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_me/new_trip/screens/new_trip_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 211, 34),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 211, 34),
        elevation: 0,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
        leading: GestureDetector(
          onTap: () async {},
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Color.fromARGB(255, 255, 211, 34),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0)),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Your Statistics:",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 240, 173),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Total Number of Trips",
                              style: TextStyle(fontSize: 18)),
                          SizedBox(height: 16),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("3",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    )),
                const SizedBox(height: 16),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 221, 71),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("How often do you fall asleep per trip",
                              style: TextStyle(fontSize: 18)),
                          SizedBox(height: 16),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("~ Every 15 mins",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    )),
                const SizedBox(height: 16),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 209, 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Average Trip Duration",
                              style: TextStyle(fontSize: 18)),
                          SizedBox(height: 16),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("~ 20 mins",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    )),
                const SizedBox(height: 93),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GestureDetector(
                        onTap: () => Get.to(() => NewTripPage()),
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                              borderRadius: BorderRadius.circular(10.0)),
                          width: double.infinity,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text("Start a Trip!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
