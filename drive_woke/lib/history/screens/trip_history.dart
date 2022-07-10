import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../settings/models/trip_history_model.dart';

class TripHistoryPage extends StatelessWidget {
  const TripHistoryPage({Key? key}) : super(key: key);

  Widget buildTrip(TripHistory history) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Color.fromARGB(255, 255, 240, 173)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Date of Trip: ${DateFormat("yyyy-MM-dd | hh:mm").format(history.date.toDate())}",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 4.0),
                Text("Duration: ${history.duration.toString()} mins",
                    style: const TextStyle(fontSize: 14)),
                const SizedBox(height: 2.0),
                Text("Times you fell asleep: ${history.alarmCount.toString()}",
                    style: const TextStyle(fontSize: 14))
              ],
            ),
            const Icon(
              Icons.dangerous_rounded,
              color: Colors.black,
              size: 48,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 211, 34),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 211, 34),
        elevation: 0,
        title: const Text(
          "History",
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
                const Text("Your Past Trips:",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12.0),
                StreamBuilder<List<TripHistory>>(
                    stream: FirebaseFirestore.instance
                        .collection('tripHistory')
                        .snapshots()
                        .map((snapshot) => snapshot.docs
                            .map((doc) => TripHistory.fromMap(doc.data()))
                            .toList()),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final trips = snapshot.data!;
                        return Column(children: trips.map(buildTrip).toList());
                      } else if (snapshot.hasError) {
                        return const Center(
                          child: Text('Something went wrong, please try again'),
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
