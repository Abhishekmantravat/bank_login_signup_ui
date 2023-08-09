import 'package:flutter/material.dart';

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
        title: const Text("Sign Up",style: TextStyle(  color: Colors.white,),),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
     body: SingleChildScrollView(
       child: Container(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Start your jurney",style: TextStyle(color: Colors.black,  fontSize: 20 ),)
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
                cursorColor: Colors.black,
     decoration: InputDecoration(        
                enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.grey),   
                        ),  
                focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                     ),
                                     label:Text("Username", style: TextStyle(color: Colors.black),),
       
               ),
              ),
                          const SizedBox(height: 10,),
                            const TextField(
                cursorColor: Colors.black,
     decoration: InputDecoration(        
                enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.grey),   
                        ),  
                focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                     ),
                                     label:Text("Email", style: TextStyle(color: Colors.black),),
       
               ),
              ),
                          const SizedBox(height: 10,),
     
                           DropdownButtonFormField<String>(
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
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        // selectedCategory = newValue!;
                      });
                    },
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(        
                enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.grey),   
                        ),  
                focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                     ),
                                     label:Text("Select a  country", style: TextStyle(color: Colors.black),),
       
               ),
                  ),


    //                      
                          const SizedBox(height: 10,),
                            const TextField(
                              keyboardType: TextInputType.number,
                cursorColor: Colors.black,
     decoration: InputDecoration(        
                enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.grey),   
                        ),  
                focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                     ),
                                     label:Text("Phone", style: TextStyle(color: Colors.black),),
       
               ),
              ),
                          const SizedBox(height: 10,),
     
              
     
     
                            TextFormField(
                                            cursorColor: Colors.black,
                  obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.grey),   
                        ),  
                focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                     ),
                      labelText: "Password",
                      labelStyle: const TextStyle(color: Colors.black),
                      prefixIconColor: Colors.grey,
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
                _passwordVisible ? Icons.visibility : Icons.visibility_off),
              ),
                    ),
                  
                  
                    ),
                     const SizedBox(height: 10,),
     
              
     
     
                            TextFormField(
                                            cursorColor: Colors.black,
                  obscureText: !_confermpasswordVisible,
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.grey),   
                        ),  
                focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                     ),
                      labelText: "Confirm Password",
                      labelStyle: const TextStyle(color: Colors.black),
                      prefixIconColor: Colors.grey,
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
                _confermpasswordVisible ? Icons.visibility : Icons.visibility_off),
              ),
                    ),
                  
                  
                    ),
                          const SizedBox(height: 10,),
     
                                Row(
                children: [
                  
                    Checkbox(value: isChecked,  onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = true;
                          });
                        },),
                        const Text("I agree with the"),
                       
                ],
              ),
                          const SizedBox(height: 15,),
     
              SizedBox(
                height: 55,
                width: double.infinity,
                child: DecoratedBox(decoration: BoxDecoration(color: Colors.black , borderRadius: BorderRadius.circular(5)),
                
                child: ElevatedButton(onPressed: (){},  style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )), child: const Text("Sign Up",style: TextStyle(color: Colors.white),)),
                ),
              ),
        
                        
              
            ],
          ),
        ),
     ),
    );
  }
}