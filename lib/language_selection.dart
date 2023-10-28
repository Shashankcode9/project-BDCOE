import 'package:flutter/material.dart';
import 'package:language_learner/main.dart';
import 'package:language_learner/sign_up_page.dart';

class language extends StatefulWidget {
  const language({super.key});

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(appBar: AppBar(
          backgroundColor: Colors.green,
        title:Center(
        child: Text('Select A Language To Learn',
        style: TextStyle(
        color: Colors.white,),),

          ),
          ),
      backgroundColor: Colors.white,
        body: Column(
        children: [
          SingleChildScrollView(
            child:Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 25),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/flags/united-states.png'),
                        backgroundColor: Colors.green,
                        radius: 80,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 25),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/flags/russia.png'),
                        backgroundColor: Colors.green,
                        radius: 80,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Text("English",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: 80,),
                    Text("Russian",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 25),
                      child: GestureDetector(
                        onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyLanguageApp()));},
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/flags/india.png'),
                          backgroundColor: Colors.green,
                          radius: 80,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 25),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/flags/italy.png'),
                        backgroundColor: Colors.green,
                        radius: 80,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 65),
                      child: Text("Hindi",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: 120,),
                    Text("Italic",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 25),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/flags/spain.png'),
                        backgroundColor: Colors.green,
                        radius: 80,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 25),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/flags/china.png'),
                        backgroundColor: Colors.green,
                        radius: 80,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: Text("Spainish",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: 70,),
                    Text("Chiness",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                ),

              ],
            )
          )
        ],
      ),
        ),

    );
  }
}
