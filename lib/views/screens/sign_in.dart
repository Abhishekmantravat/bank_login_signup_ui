import 'package:flutter/material.dart';
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
       body: SingleChildScrollView(
         child: Container(
          padding: const EdgeInsets.only(top: 55, left: 10, right: 10),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Let's Sign you in.",style: TextStyle(color: Colors.black,  fontSize: 25 ),)
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
                cursorColor: Colors.black,
       decoration: InputDecoration(        
                enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.grey),   
                        ),  
                focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                     ),
                                     label:Text("Username or Email", style: TextStyle(color: Colors.black),),
         
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
                          const SizedBox(height: 20,),
       
                                Row(
                children: [
                  
                    Checkbox(value: isChecked,  onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = true;
                          });
                        },),
                        const Text("Remember Me"),
                        Expanded(child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: (){}, child: const Text("Forget Password?", style: TextStyle(decoration: TextDecoration.underline, color: Colors.black),))
                          ],
                        ))
                ],
              ),
                          const SizedBox(height: 40,),
       
              SizedBox(
                height: 55,
                width: double.infinity,
                child: DecoratedBox(decoration: BoxDecoration(color: Colors.black , borderRadius: BorderRadius.circular(5)),
                
                child: ElevatedButton(onPressed: (){},  style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )), child: const Text("Sign In",style: TextStyle(color: Colors.white),)),
                ),
              ),
             
                          const SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Don't have an account?",style: TextStyle(color: Colors.black) ,),
                              TextButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> sign_up_screen()));
       
                              }, child: const Text("Sign Up Now", style: TextStyle(decoration: TextDecoration.underline, color: Colors.black , fontWeight: FontWeight.bold), ))
                            ],
                          )
       
              
            ],
          ),
             ),
       ),
    );
  }
}