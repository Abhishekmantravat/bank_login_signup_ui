import 'package:flutter/material.dart';
import 'package:login_screen/constant/button.dart';
import 'package:login_screen/views/screens/sign_up.dart';


class sign_in_screen extends StatefulWidget {
  const sign_in_screen({super.key});

  @override
  State<sign_in_screen> createState() => _sign_in_screenState();
}

class _sign_in_screenState extends State<sign_in_screen> {






    bool isChecked = false ;
    late bool _passwordVisible;
      late bool validate;

void initState() {
    _passwordVisible = false;
    validate= false;
    super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body: SafeArea(
         child: Stack(
           children: [
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
                padding: const EdgeInsets.only(top: 55, left: 10, right: 10),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Let's Sign you in.",style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),)
                      ],
                    ),
                    const SizedBox(height: 20,),
             
                       const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Welcome back please enter",style: TextStyle(color: Colors.grey,  ),)
                      ],
                    ),
                    const SizedBox(height: 2,),
             
                       const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Your details",style: TextStyle(color: Colors.grey,  ),)
                      ],
                    )
                    ,
                    const SizedBox(height: 25,),
             
                    const TextField(
                                                                        style: TextStyle(color: Colors.white),

                      cursorColor: Colors.black,
             decoration: InputDecoration(        
                      enabledBorder: UnderlineInputBorder(      
                              borderSide: BorderSide(color: Colors.grey),   
                              ),  
                      focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                           ),
                                           label:Text("Username or Email", style: TextStyle(color: Colors.white),),
               
                     ),
                    ),
                                const SizedBox(height: 10,),
             
                    
             
             
                                  TextFormField(
                                                                                      style: TextStyle(color: Colors.white),

                                                  cursorColor: Colors.white,
                        obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(      
                              borderSide: BorderSide(color: Colors.grey),   
                              ),  
                      focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                           ),
                            labelText: "Password",
                            labelStyle: const TextStyle(color: Colors.white),
                            prefixIconColor: Colors.white,
                            suffixIcon: GestureDetector(
                          onTap: () {
                    setState(() {
                      _passwordVisible = true;
                    
                    });
                          },
                          onDoubleTap: () {
                    setState(() {
                      _passwordVisible = false;
                    });
                          },
                          child: Icon(
                      _passwordVisible ? Icons.visibility : Icons.visibility_off , color: Colors.white ,),
                    ),
                          ),
                        
                        
                          ),
                                const SizedBox(height: 20,),
             
                                      Row(
                      children: [
                        
                          Checkbox(value: isChecked, side: BorderSide(color: Colors.white), checkColor: Colors.white, activeColor: Colors.green, focusColor: Colors.white, onChanged: (bool? newValue) {
                                setState(() {
                                  isChecked = true;
                                });
                              },),
                              const Text("Remember Me", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                              Expanded(child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(onPressed: (){}, child: const Text("Forget Password?", style: TextStyle(decoration: TextDecoration.underline, color: Colors.white),))
                                ],
                              ))
                      ],
                    ),
                                const SizedBox(height: 40,),
             
 Container(
                    height: 55.0,
                    width: double.infinity,
                    decoration: kGradientBoxDecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: kInnerDecoration,
                        child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>  sign_in_screen()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "ꜱɪɢɴ ɪɴ",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),


                   
                                const SizedBox(height: 40,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Don't have an account?",style: TextStyle(color: Colors.white) ,),
                                    TextButton(onPressed: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=> sign_up_screen()));
             
                                    }, child: const Text("Sign Up Now", style: TextStyle(decoration: TextDecoration.underline, color: Colors.white , fontWeight: FontWeight.bold), ))
                                  ],
                                )
             
                    
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