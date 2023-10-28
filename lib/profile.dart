import 'package:flutter/material.dart';
import 'package:language_learner/lesson_1.dart';

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}


class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 30),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 60,
                    ),
                  ),
                  SizedBox(width: 30,),
                  Text("Your Name Here",style: TextStyle(fontSize: 25,),),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15),
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Card(
                        color: Colors.green,
                        elevation: 10,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text("Your Points\n 0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
                            ),
                        ),
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 5),
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Card(
                        color: Colors.green,
                        elevation: 10,
                        child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text("Your Rank",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),))),
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 50,),
              Text("Your Name",style: TextStyle(fontSize: 40,fontFamily: 'ubuntu'),),
              SizedBox(height: 15,),
              Text("Your Age",style: TextStyle(fontSize: 40,fontFamily: 'ubuntu'),),
              SizedBox(height: 15,),
              Text("Email Address",style: TextStyle(fontSize: 40,fontFamily: 'ubuntu'),),
              SizedBox(height: 15,),
              Text("Mobile Number",style: TextStyle(fontSize: 40,fontFamily: 'ubuntu'),),
              SizedBox(height: 15,),
              Text("Other Detail",style: TextStyle(fontSize: 40,fontFamily: 'ubuntu'),),
              SizedBox(height: 100,),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      onPrimary: Colors.white,
                      minimumSize: Size(200,50)
                  ),
                  child: Text("Edit Your Details",style: TextStyle(fontSize: 23),)

              ),
            ],
          ),
        ),
    );
  }
}
