import 'package:flutter/material.dart';
import 'package:language_learner/main.dart';

TextEditingController emailcontrol = TextEditingController();
TextEditingController passwordcontrol = TextEditingController();
class login extends StatelessWidget{
  signin(String email,password) async{
    
  }

  const login({super.key});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.green,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top:50,left:15),
                child: Text('Welcome Back\nLearners',style: TextStyle(color: Colors.white,fontSize: 40,fontFamily:'ubuntu'),),
              ),
              Container(
                child : Image.asset('assets/images/login.png',fit: BoxFit.fill,),
               height: 300,
                width: 300,
              ),
              
                  Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: Column(
                          children: [
                            TextField(
                              controller: emailcontrol,
                              decoration: InputDecoration(
                                fillColor: Colors.grey.shade300,
                                filled: true,
                                prefixIcon: Icon(Icons.mail),
                                hintText: 'Emali Or Username',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),),
                                ),
                              ),
                            SizedBox(height: 20,),
                            TextField(
                              controller: passwordcontrol,
                              obscureText: true,
                              decoration: InputDecoration(
                                fillColor: Colors.grey.shade300,
                                filled: true,
                                prefixIcon: Icon(Icons.password),
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),),
                              ),
                            ),
                            SizedBox(height: 21,),
                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyLanguageApp()));
                            },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.black,
                                    minimumSize: Size(300,50)
                                ),
                                child:Text("Sign In",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                            ),
                              SizedBox(height: 10,),


                              Column(
                              children: [
                                Text("OR",
                                  style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'lgnn',fontWeight: FontWeight.bold),),
                                 SizedBox(height: 10,),
                                 Padding(padding:
                                 const EdgeInsets.only(left: 20,right: 20),
                                   child: MaterialButton(
                                     onPressed: (){},
                                     color: Colors.white,
                                     elevation: 15,
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Container(
                                           height: 50,
                                           width: 45,
                                           decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage('assets/google.png'),
                                               fit: BoxFit.cover
                                             ),
                                             shape: BoxShape.circle,
                                             color: Colors.transparent,
                                           ),
                                         ),
                                         SizedBox(width: 20,),
                                         Text("Sign In With Google",style: TextStyle(fontSize: 20),),
                                       ],
                                     ),
                                   ),
                                 )
                              ],
                            ),
                            SizedBox(height: 20,),
                            TextButton(onPressed: (){},
                                child: Text("Forgot Your Password",style: TextStyle(color: Colors.white,fontSize: 19),))

                          ],
                        ),
                      )
                  ),
                


            ],
          ),
        ),
    );
  }
}
