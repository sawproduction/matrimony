import 'package:flutter/material.dart';
import 'package:matrimony/addphoto_view/addphotobody/addphoto_body.dart';

class Add_Photo_screen extends StatelessWidget {
  const Add_Photo_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Add_photo_body(),
    );
  }
}
