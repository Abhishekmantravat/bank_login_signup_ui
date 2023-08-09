import 'package:flutter/material.dart';
import 'package:login_screen/views/screens/sign_in.dart';
import 'package:login_screen/views/screens/sign_up.dart';

class loginscreen extends StatelessWidget {
  loginscreen({super.key});

  final kInnerDecoration = BoxDecoration(
    color: const Color.fromARGB(255, 0, 0, 0),
    borderRadius: BorderRadius.circular(32),
  );

  final kGradientBoxDecoration = BoxDecoration(
    gradient: const LinearGradient(colors: [
      Colors.yellow,
      Colors.redAccent,
      Color.fromARGB(255, 65, 249, 243)
    ]),
    borderRadius: BorderRadius.circular(32),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(

 body:SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                child: const FractionallySizedBox(
                  heightFactor: 1.0,
                  widthFactor: 1.0,
                  //for full screen set heightFactor: 1.0,widthFactor: 1.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/InShot_20230808_192247717.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),

               SingleChildScrollView(
                 child: Container(
                           padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
                           child: Column(
                             children: [
                  Container(
                      height: 400,
                      width: double.infinity,
                      child: const Image(
                        image: AssetImage(
                          "assets/images/Screenshot 2023-08-08 172132.png",
                        ),
                        fit: BoxFit.cover,
                        height: 410,
                        width: double.infinity,
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Creda",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 44),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Get your Subscriptions Under control with ",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "smart banking services",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const sign_in_screen()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                )),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Log in",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  Icons.fit_screen_sharp,
                                  color: Colors.white,
                                )
                              ],
                            )),
                        decoration: kInnerDecoration,
                      ),
                    ),
                    height: 50.0,
                    width: double.infinity,
                    decoration: kGradientBoxDecoration,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){ }, child: const Text(
                        "Need help?",
                        style: TextStyle( decoration: TextDecoration.underline,decorationColor: Color.fromARGB(255, 223, 223, 223),
                          color: Colors.grey,
                        ),
                      ))
                    ],
                  ),
                             ],
                           ),
                         ),
               ),
            ],
          ),
        ),
    );
  }
}
