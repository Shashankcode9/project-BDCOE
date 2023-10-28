import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.green,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60,),
                Center(child: Text("Let's Get Started",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily:'ubuntu'),)),
                Center(child: Text("Sign Up For Free",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily:'ubuntu'),)),
                Center(
                  child: Container(

                    child: Image.asset('assets/images/welcome.png'),
                    height: 300,
                    width: 300,
                  ),
                ),
                
                Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25),
                    child: Container(
                      child:Column(
                      children:[ TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          prefixIcon: Icon(Icons.co_present_rounded),
                          hintText: 'Full Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              prefixIcon: Icon(Icons.mail),
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),),
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            prefixIcon: Icon(Icons.supervised_user_circle_outlined),
                            hintText: 'UserName',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            prefixIcon: Icon(Icons.password_outlined),

                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),),
                          ),
                        ),
                      ]
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        minimumSize: Size(300,50),

                    ),
                    child:Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)


                )
                
              ],
            ),
          ),

    );
  }
}
