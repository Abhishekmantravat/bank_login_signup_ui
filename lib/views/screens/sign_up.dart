import 'package:flutter/material.dart';

import '../../constant/button.dart';

class sign_up_screen extends StatefulWidget {
   sign_up_screen({super.key});


  @override
  State<sign_up_screen> createState() => _sign_up_screenState();
}

class _sign_up_screenState extends State<sign_up_screen> {
  bool isChecked = false ;

    late bool _passwordVisible;

      late bool validate;
    late bool _confermpasswordVisible;



void initState() {
    _passwordVisible = false;
    _confermpasswordVisible = false;
    validate= false;
    super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("𝘚𝘪𝘨𝘯 𝘶𝘱",style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white,),),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
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
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10 , bottom: 20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Start your jurney",style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),)
                      ],
                    ),
                    const SizedBox(height: 10,),
           
                       const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("To create an account , please enter your valid",style: TextStyle(color: Colors.grey,  ),)
                      ],
                    ),
                    const SizedBox(height: 2,),
           
                       const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("information beloe",style: TextStyle(color: Colors.grey,  ),)
                      ],
                    )
                    ,
                    const SizedBox(height: 20,),
           
                    const TextField(
                                                style: const TextStyle(color: Colors.white),

                      cursorColor: Colors.white,
           decoration: InputDecoration(        
                      enabledBorder: UnderlineInputBorder(      
                              borderSide: BorderSide(color: Colors.grey),   
                              ),  
                      focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                           ),
                                           label:Text("Username", style: TextStyle(color: Colors.white),),
             
                     ),
                    ),
                                const SizedBox(height: 10,),
                                  const TextField(
                                                              style: const TextStyle(color: Colors.white),

                      cursorColor: Colors.white,
           decoration: InputDecoration(        
                      enabledBorder: UnderlineInputBorder(      
                              borderSide: BorderSide(color: Colors.grey),   
                              ),  
                      focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                           ),
                                           label:Text("Email", style: TextStyle(color: Colors.white),),
             
                     ),
                    ),
                                const SizedBox(height: 10,),
           
                                 DropdownButtonFormField<String>(
                                                                                    // style: TextStyle(color: Colors.black),

                          // value: selectedCategory,
                          items: <String>[
                            'India',
                            'China',
                            'United States',
                            'Pakistan',
                            'Nigeria',
                            'Japan',
                            'Germany',
                            'United Kingdom',
                            'South Africa',
                            'France',
                            'Italy',
                            'Spain',
                            'Saudi Arabia',
                            'Nepal',
                            'Canada',

                          ].map<DropdownMenuItem<String>>((String value ) {
                            return DropdownMenuItem<String>(
                              
                              value: value, 
                              child: Text(value,       style: const TextStyle(color: Colors.white , backgroundColor: Colors.black),                     
),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              // selectedCategory = newValue!;
                            });
                          },
                          decoration: const InputDecoration(   
iconColor: Colors.black,  
prefixIconColor: Colors.black,                    enabledBorder: UnderlineInputBorder(      
                              borderSide: BorderSide(color: Colors.grey),   
                              ),  
                      focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                           ),
                                           label:Text("Select a  country", style: TextStyle(color: Colors.white),),
             
                     ),
                        ),
     
     
         //                      
                                const SizedBox(height: 10,),
                                  const TextField(
                                                                                      style: TextStyle(color: Colors.white),

                                    keyboardType: TextInputType.number,
                      cursorColor: Colors.white,
           decoration: InputDecoration(        
                      enabledBorder: UnderlineInputBorder(      
                              borderSide: BorderSide(color: Colors.grey),   
                              ),  
                      focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                           ),
                                           label:Text("Phone", style: TextStyle(color: Colors.white),),
             
                     ),
                    ),
                                const SizedBox(height: 10,),
           
                    
           
           
                                  TextFormField(
                                                  cursorColor: Colors.white,
                                                                                                    style: TextStyle(color: Colors.white),

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
                      _passwordVisible ? Icons.visibility  : Icons.visibility_off ,color: Colors.white ),
                    ),
                          ),
                        
                        
                          ),
                           const SizedBox(height: 10,),
           
                    
           
           
                                  TextFormField(
                                                  cursorColor: Colors.white,
                                                  style: TextStyle(color: Colors.white),
                        obscureText: !_confermpasswordVisible,
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(      
                              borderSide: BorderSide(color: Colors.grey),   
                              ),  
                      focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                           ),
                            labelText: "Confirm Password",
                            labelStyle: const TextStyle(color: Colors.white),
                            prefixIconColor: Colors.white,
                            suffixIcon: GestureDetector(
                          onTap: () {
                    setState(() {
                      _confermpasswordVisible = true;
                    
                    });
                          },
                          onDoubleTap: () {
                    setState(() {
                      _confermpasswordVisible = false;
                    });
                          },
                          child: Icon(
                      _confermpasswordVisible ? Icons.visibility : Icons.visibility_off , color: Colors.white ,   ),
                    ),
                          ),
                        
                        
                          ),
                                const SizedBox(height: 10,),
           
                                      Row(
                      children: [
                        
                          Checkbox(value: isChecked, side: BorderSide(color: Colors.white), checkColor: Colors.white, activeColor: Colors.green, focusColor: Colors.white, onChanged: (bool? newValue) {
                                setState(() {
                                  isChecked = true;
                                });
                              },),
                              const Text("I agree with the",style: TextStyle(color: Colors.white)),
                             
                      ],
                    ),
                                const SizedBox(height: 15,),
           
                  



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
                                  "ꜱɪɢɴ ᴜᴘ",
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
























// import 'package:flutter/material.dart';

// class sign_up_screen extends StatefulWidget {
//    sign_up_screen({super.key});

//   @override
//   State<sign_up_screen> createState() => _sign_up_screenState();
// }

// class _sign_up_screenState extends State<sign_up_screen> {
//   bool isChecked = false ;

//     late bool _passwordVisible;

//       late bool validate;
//     late bool _confermpasswordVisible;



// void initState() {
//     _passwordVisible = false;
//     _confermpasswordVisible = false;
//     validate= false;
//     super.initState();
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: const Text("Sign Up",style: TextStyle(  color: Colors.white,),),
//         leading: const BackButton(
//           color: Colors.white,
//         ),
//       ),
//      body: SingleChildScrollView(
//        child: Container(
//           padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
//           child: Column(
//             children: [
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text("Start your jurney",style: TextStyle(color: Colors.black,  fontSize: 20 ),)
//                 ],
//               ),
//               const SizedBox(height: 10,),
     
//                  const Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text("To create an account , please enter your valid",style: TextStyle(color: Colors.grey,  ),)
//                 ],
//               ),
//               const SizedBox(height: 2,),
     
//                  const Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text("information beloe",style: TextStyle(color: Colors.grey,  ),)
//                 ],
//               )
//               ,
//               const SizedBox(height: 20,),
     
//               const TextField(
//                 cursorColor: Colors.black,
//      decoration: InputDecoration(        
//                 enabledBorder: UnderlineInputBorder(      
//                         borderSide: BorderSide(color: Colors.grey),   
//                         ),  
//                 focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey),
//                      ),
//                                      label:Text("Username", style: TextStyle(color: Colors.black),),
       
//                ),
//               ),
//                           const SizedBox(height: 10,),
//                             const TextField(
//                 cursorColor: Colors.black,
//      decoration: InputDecoration(        
//                 enabledBorder: UnderlineInputBorder(      
//                         borderSide: BorderSide(color: Colors.grey),   
//                         ),  
//                 focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey),
//                      ),
//                                      label:Text("Email", style: TextStyle(color: Colors.black),),
       
//                ),
//               ),
//                           const SizedBox(height: 10,),
     
//                            DropdownButtonFormField<String>(
//                     // value: selectedCategory,
//                     items: <String>[
//                       'India',
//                       'China',
//                       'United States',
//                       'Pakistan',
//                       'Nigeria',
//                       'Japan',
//                       'Germany',
//                       'United Kingdom',
//                       'South Africa',
//                       'France',
//                       'Italy',
//                       'Spain',
//                       'Saudi Arabia',
//                       'Nepal',
//                       'Canada',
//                     ].map<DropdownMenuItem<String>>((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value),
//                       );
//                     }).toList(),
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         // selectedCategory = newValue!;
//                       });
//                     },
//                     style: const TextStyle(color: Colors.black),
//                     decoration: const InputDecoration(        
//                 enabledBorder: UnderlineInputBorder(      
//                         borderSide: BorderSide(color: Colors.grey),   
//                         ),  
//                 focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey),
//                      ),
//                                      label:Text("Select a  country", style: TextStyle(color: Colors.black),),
       
//                ),
//                   ),


//     //                      
//                           const SizedBox(height: 10,),
//                             const TextField(
//                               keyboardType: TextInputType.number,
//                 cursorColor: Colors.black,
//      decoration: InputDecoration(        
//                 enabledBorder: UnderlineInputBorder(      
//                         borderSide: BorderSide(color: Colors.grey),   
//                         ),  
//                 focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey),
//                      ),
//                                      label:Text("Phone", style: TextStyle(color: Colors.black),),
       
//                ),
//               ),
//                           const SizedBox(height: 10,),
     
              
     
     
//                             TextFormField(
//                                             cursorColor: Colors.black,
//                   obscureText: !_passwordVisible,
//                     decoration: InputDecoration(
//                       enabledBorder: const UnderlineInputBorder(      
//                         borderSide: BorderSide(color: Colors.grey),   
//                         ),  
//                 focusedBorder: const UnderlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey),
//                      ),
//                       labelText: "Password",
//                       labelStyle: const TextStyle(color: Colors.black),
//                       prefixIconColor: Colors.grey,
//                       suffixIcon: GestureDetector(
//                     onTap: () {
//               setState(() {
//                 _passwordVisible = true;
              
//               });
//                     },
//                     onDoubleTap: () {
//               setState(() {
//                 _passwordVisible = false;
//               });
//                     },
//                     child: Icon(
//                 _passwordVisible ? Icons.visibility : Icons.visibility_off),
//               ),
//                     ),
                  
                  
//                     ),
//                      const SizedBox(height: 10,),
     
              
     
     
//                             TextFormField(
//                                             cursorColor: Colors.black,
//                   obscureText: !_confermpasswordVisible,
//                     decoration: InputDecoration(
//                       enabledBorder: const UnderlineInputBorder(      
//                         borderSide: BorderSide(color: Colors.grey),   
//                         ),  
//                 focusedBorder: const UnderlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey),
//                      ),
//                       labelText: "Confirm Password",
//                       labelStyle: const TextStyle(color: Colors.black),
//                       prefixIconColor: Colors.grey,
//                       suffixIcon: GestureDetector(
//                     onTap: () {
//               setState(() {
//                 _confermpasswordVisible = true;
              
//               });
//                     },
//                     onDoubleTap: () {
//               setState(() {
//                 _confermpasswordVisible = false;
//               });
//                     },
//                     child: Icon(
//                 _confermpasswordVisible ? Icons.visibility : Icons.visibility_off),
//               ),
//                     ),
                  
                  
//                     ),
//                           const SizedBox(height: 10,),
     
//                                 Row(
//                 children: [
                  
//                     Checkbox(value: isChecked,  onChanged: (bool? newValue) {
//                           setState(() {
//                             isChecked = true;
//                           });
//                         },),
//                         const Text("I agree with the"),
                       
//                 ],
//               ),
//                           const SizedBox(height: 15,),
     
//               SizedBox(
//                 height: 55,
//                 width: double.infinity,
//                 child: DecoratedBox(decoration: BoxDecoration(color: Colors.black , borderRadius: BorderRadius.circular(5)),
                
//                 child: ElevatedButton(onPressed: (){},  style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.black,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )), child: const Text("Sign Up",style: TextStyle(color: Colors.white),)),
//                 ),
//               ),
        
                        
              
//             ],
//           ),
//         ),
//      ),
//     );
//   }
// }






















// import 'package:flutter/material.dart';
// import 'package:login_screen/views/screens/sign_up.dart';

// class sign_in_screen extends StatefulWidget {
//   const sign_in_screen({super.key});

//   @override
//   State<sign_in_screen> createState() => _sign_in_screenState();
// }

// class _sign_in_screenState extends State<sign_in_screen> {
//     bool isChecked = false ;
//     late bool _passwordVisible;
//       late bool validate;

// void initState() {
//     _passwordVisible = false;
//     validate= false;
//     super.initState();
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//        body: SingleChildScrollView(
//          child: Container(
//           padding: const EdgeInsets.only(top: 55, left: 10, right: 10),
//           child: Column(
//             children: [
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text("Let's Sign you in.",style: TextStyle(color: Colors.black,  fontSize: 25 ),)
//                 ],
//               ),
//               const SizedBox(height: 20,),
       
//                  const Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text("Welcome back please enter",style: TextStyle(color: Colors.grey,  ),)
//                 ],
//               ),
//               const SizedBox(height: 2,),
       
//                  const Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text("Your details",style: TextStyle(color: Colors.grey,  ),)
//                 ],
//               )
//               ,
//               const SizedBox(height: 25,),
       
//               const TextField(
//                 cursorColor: Colors.black,
//        decoration: InputDecoration(        
//                 enabledBorder: UnderlineInputBorder(      
//                         borderSide: BorderSide(color: Colors.grey),   
//                         ),  
//                 focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey),
//                      ),
//                                      label:Text("Username or Email", style: TextStyle(color: Colors.black),),
         
//                ),
//               ),
//                           const SizedBox(height: 10,),
       
              
       
       
//                             TextFormField(
//                                             cursorColor: Colors.black,
//                   obscureText: !_passwordVisible,
//                     decoration: InputDecoration(
//                       enabledBorder: const UnderlineInputBorder(      
//                         borderSide: BorderSide(color: Colors.grey),   
//                         ),  
//                 focusedBorder: const UnderlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey),
//                      ),
//                       labelText: "Password",
//                       labelStyle: const TextStyle(color: Colors.black),
//                       prefixIconColor: Colors.grey,
//                       suffixIcon: GestureDetector(
//                     onTap: () {
//               setState(() {
//                 _passwordVisible = true;
              
//               });
//                     },
//                     onDoubleTap: () {
//               setState(() {
//                 _passwordVisible = false;
//               });
//                     },
//                     child: Icon(
//                 _passwordVisible ? Icons.visibility : Icons.visibility_off),
//               ),
//                     ),
                  
                  
//                     ),
//                           const SizedBox(height: 20,),
       
//                                 Row(
//                 children: [
                  
//                     Checkbox(value: isChecked,  onChanged: (bool? newValue) {
//                           setState(() {
//                             isChecked = true;
//                           });
//                         },),
//                         const Text("Remember Me"),
//                         Expanded(child: Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             TextButton(onPressed: (){}, child: const Text("Forget Password?", style: TextStyle(decoration: TextDecoration.underline, color: Colors.black),))
//                           ],
//                         ))
//                 ],
//               ),
//                           const SizedBox(height: 40,),
       
//               SizedBox(
//                 height: 55,
//                 width: double.infinity,
//                 child: DecoratedBox(decoration: BoxDecoration(color: Colors.black , borderRadius: BorderRadius.circular(5)),
                
//                 child: ElevatedButton(onPressed: (){},  style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.black,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )), child: const Text("Sign In",style: TextStyle(color: Colors.white),)),
//                 ),
//               ),
             
//                           const SizedBox(height: 40,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const Text("Don't have an account?",style: TextStyle(color: Colors.black) ,),
//                               TextButton(onPressed: (){
//                              Navigator.push(context, MaterialPageRoute(builder: (context)=> sign_up_screen()));
       
//                               }, child: const Text("Sign Up Now", style: TextStyle(decoration: TextDecoration.underline, color: Colors.black , fontWeight: FontWeight.bold), ))
//                             ],
//                           )
       
              
//             ],
//           ),
//              ),
//        ),
//     );
//   }
// }