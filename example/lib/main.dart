import 'package:custom_dio_fix/custom_dio.dart';
import 'package:custom_dio_fix_example/test_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CustomDio.setInitData(
    CustomDioOptions(
      baseUrl: "http://www.exmaple.com/api/v1/",
      headers: {"authorization": "Bearer xxx"},
    ),
  );
  runApp(const MaterialApp(
    home: TestPage(),
    debugShowCheckedModeBanner: false,
  ));
}
