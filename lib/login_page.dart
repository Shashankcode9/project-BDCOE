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
        body: Column(
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
            SingleChildScrollView(

                child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25,right: 25),
                      child: Column(
                        children: [

                          TextField(
                            controller: emailcontrol,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              hintText: 'Emali Or Username',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),),
                              ),
                            ),
                          SizedBox(height: 20,),
                          TextField(
                            controller: passwordcontrol,
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),),
                            ),
                          ),
                          SizedBox(height: 21,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sign In",style: TextStyle(color: Colors.amberAccent,fontSize: 40,fontFamily: 'lgn',fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 15),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.lightBlue.shade800,
                                  child: IconButton(
                                    color: Colors.amberAccent,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),);
                                    }, icon: Icon(Icons.arrow_forward_ios,size: 30,),

                                  ),
                                ),
                              ),
                            ],
                          ),

                            Column(
                            children: [
                              Text("OR",
                                style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'lgnn',fontWeight: FontWeight.bold),),
                               SizedBox(height: 10,),
                               Padding(padding:
                               const EdgeInsets.only(left: 20,right: 20),
                                 child: MaterialButton(
                                   onPressed: (){},
                                   color: Colors.teal.shade100,
                                   elevation: 15,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Container(
                                         height: 45,
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

                        ],
                      ),
                    )
                ),
              ),


          ],
        ),
    );
  }
}
