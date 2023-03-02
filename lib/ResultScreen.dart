// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  ResultScreen({
    required this.result,
    required this.isMale,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Results'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'الجنس : ${isMale ? 'ذكر' : 'أنثى'}',
                  style: const TextStyle(
                      fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'عمرك هو : $age',
                  style: const TextStyle(
                      fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  ': مؤشر كتلة الجسم الخاص بك هو \n $result',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 23.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 2.0,
            color: Colors.grey[400],
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: showwResult(),
          )),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.grey[400],
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                  ' إن مؤشر كتلة الجسم المثالي الذي يتراوح بين 18.5 و 24.9',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
            ),
          ),
        ],
      ),
    );
  }

  showwResult() {
    if (result < 18.5) {
      return Container(
        alignment: Alignment.center,
        color: Colors.blue[100],
        child: const Text(
          ' وهذا يُشير إلى أن وزنك يُصنّف ضمن فئة أقل من الوزن الطبيعي (نحافة)  ',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      );
    } else if (result >= 18.5 && result <= 25) {
      return Container(
        alignment: Alignment.center,
        color: Colors.green[300],
        child: const Text('وهذا يُشير إلى أن وزنك يُصنّف ضمن فئة الوزن الطبيعي',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white)),
      );
    } else if (result > 25 && result <= 30) {
      return Container(
          alignment: Alignment.center,
          color: Colors.red[50],
          child: const Text(
            'وهذا يُشير إلى أن وزنك يُصنّف ضمن فئة الوزن الزائد',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ));
    } else if (result > 30 && result <= 35) {
      return Container(
        alignment: Alignment.center,
        color: Colors.red[200],
        child: const Text(
            'وهذا يُشير إلى أن وزنك يُصنّف ضمن السمنة من الفئة الأولى',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white)),
      );
    } else if (result > 35 && result <= 40) {
      return Container(
        alignment: Alignment.center,
        color: Colors.red[400],
        child: const Text(
            'وهذا يُشير إلى أن وزنك يُصنّف ضمن السمنة من الفئة الثانية',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white)),
      );
    } else if (result >= 41) {
      return Container(
        alignment: Alignment.center,
        color: Colors.red[600],
        child: const Text(
            'وهذا يُشير إلى أن وزنك يُصنّف ضمن السمنة من الفئة الثالثة',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white)),
      );
    }
  }
}
