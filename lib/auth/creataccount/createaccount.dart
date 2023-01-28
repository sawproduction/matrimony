import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:matrimony/configuration/front_end.dart';
import 'package:matrimony/constants/colors.dart';
import 'package:matrimony/elements/button.dart';
import 'package:matrimony/elements/inputtextfeild.dart';
import 'package:matrimony/res.dart';

class Create_Account_Screen extends StatefulWidget {
  const Create_Account_Screen({Key? key}) : super(key: key);

  @override
  State<Create_Account_Screen> createState() => _Create_Account_ScreenState();
}

class _Create_Account_ScreenState extends State<Create_Account_Screen> {
  final emailTextEditController = new TextEditingController();

  List options = ["Self", "Parent", "Sibling", "Relative", "Friend"];
  int select_option = 0;
  List<String> data = ["Country living in","Pakistan", "India", "America", "England", "BanglaDesh"];
  List<String> city = ["City","Self","dehli", "islamabd", "dhaka", "kolkata", "Up"];
  List<String> citizen = ["Select Citizenship","Self","dehli", "islamabd", "dhaka", "kolkata", "Up"];

  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: bgred,
          automaticallyImplyLeading: false,
          title: Text("CREATE ACCOUNT"),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text("Step 2 /3"),
            ),

          ]),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Are you willing to marry from other",
                      style: TextStyle(
                          fontFamily: "Poppins Medium",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "sects?",
                      style: TextStyle(
                          fontFamily: "Poppins Medium",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    FlutterSwitch(
                      inactiveColor: Color(0xff797878),
                      activeColor: Colors.red,
                      toggleColor: Colors.grey.shade200,
                      width: 52.0,
                      height: 22.0,
                      valueFontSize: 12.0,
                      toggleSize: 18.0,
                      value: _switchValue,
                      onToggle: (val) {
                        setState(() {
                          _switchValue = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Marital Status",
                      style: TextStyle(
                          fontFamily: "Poppins Medium",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Marital status of the groom",
                      style: TextStyle(
                          fontFamily: "Poppins Medium",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),
              Wrap(
                  children: List.generate(options.length, (index) {
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    setState(() {
                      select_option = index;
                    });
                  },
                  child: Container(
                    width: 90,
                    height: 33,
                    margin: EdgeInsets.all(width * 0.04),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.04),
                      color: select_option == index ? bgred : chipbg,
                    ),
                    child: Center(
                      child: Text(
                        options[index],
                        style: TextStyle(
                            color: select_option == index
                                ? Colors.white
                                : Color(0xff797878)),
                      ),
                    ),
                  ),
                );
              }).toList()),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: double.infinity,

                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Color(0xff797878), width: 1)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff797878),width: 1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),

                    icon: ImageIcon(
                      AssetImage(Assets.forwordarrow),
                    ),
                    value: data.first,
                    elevation: 8,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        data = value! as List<String>;
                      });
                    },
                    items: data.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Country of residence of the groom",
                      style: TextStyle(
                          fontFamily: "Poppins Medium",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: double.infinity,

                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                          BorderSide(color: Color(0xff797878), width: 1)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff797878),width: 1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),

                    icon: ImageIcon(
                      AssetImage(Assets.forwordarrow),
                    ),
                    value: city.first,
                    elevation: 8,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        city = value! as List<String>;
                      });
                    },
                    items: city.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Which city are you from ",
                      style: TextStyle(
                          fontFamily: "Poppins Medium",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: double.infinity,

                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                          BorderSide(color: Color(0xff797878), width: 1)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff797878),width: 1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),

                    icon: ImageIcon(
                      AssetImage(Assets.forwordarrow),
                    ),
                    value: city.first,
                    elevation: 8,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        city = value! as List<String>;
                      });
                    },
                    items: city.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "You have any citizenship",
                      style: TextStyle(
                          fontFamily: "Poppins Medium",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 120,
                  width: double.infinity,

                  child: TextField(
                    maxLines: 5,
                    obscureText: false,
                    controller: emailTextEditController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: FrontEndConfigs.textcolor, width: 1.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),

                      fillColor: Colors.white,
                      filled: true,

                      //labelStyle: TextStyle(color: CustomTheme.primaryColor),
                      hintStyle: CustomStyle.Poppinsnormal,
                      hintText: "Type here",
                      labelText: "About your Self",
                      labelStyle: CustomStyle.Poppinsnormal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CircularButton(
                  text: 'Continue',
                  contcolor: FrontEndConfigs.kprimerycolor,
                  ontap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => BottomBar()));
                  },
                  color: Colors.white,
                  bordercolor: FrontEndConfigs.kprimerycolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
