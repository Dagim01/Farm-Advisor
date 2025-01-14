import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatefulWidget {
  const Profile({
    super.key,
  });
  // final title;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Color.fromARGB(247, 250, 250, 246),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    // offset: Offset(5, 10),

                    blurStyle: BlurStyle.normal)
              ],
            ),
            child: Row(children: <Widget>[
              Align(
                  child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      context.go('/');
                    },
                    icon: Icon(
                      Icons.close,
                      color: Color.fromARGB(255, 41, 41, 41),
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "PROFILE",
                    style: TextStyle(fontSize: 11, fontFamily: 'Robot'),
                  ),
                ],
              )),
              Padding(
                padding: EdgeInsets.only(left: 0),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.landscape,
                  color: Colors.white,
                ),
                Text(style: TextStyle(fontSize: 10), "Phone"),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Card(
                child: Container(
                    height: 40,
                    width: double.infinity,
                    color: Color(0xFFF5F6F9),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 10), //apply padding to all four sides
                        child: Text(
                          "+47 384 943 38",
                        ),
                      ),
                    )),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Container(
                height: 40,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 10), //apply padding to all four sides
                    child: Text(
                      style: TextStyle(fontSize: 10),
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel fermentum mauris. Proin id erat feugiat, fermentum mi at, aliquet",
                    ),
                  ),
                )),
          ),
          const Divider(
            color: Color.fromRGBO(211, 211, 211, 1),
            height: 25,
            thickness: 0.7,
            indent: 15,
            endIndent: 15,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Card(
                  child: Container(
                height: 40,
                width: double.infinity,
                color: Color(0xFFF5F6F9),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 10,
                          right: 10), //apply padding to all four sides
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Terms and Condtions",
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                            ),
                          ]),
                    )),
              ))),
          Spacer(),
          Container(
              height: 140,
              child: Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Delete Account",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
