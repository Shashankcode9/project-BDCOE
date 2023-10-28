import 'package:flutter/material.dart';
import 'package:language_learner/lesson_1.dart';
class Hindi extends StatefulWidget {
  const Hindi({super.key});

  @override
  State<Hindi> createState() => _HindiState();
}

class _HindiState extends State<Hindi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>lsn1()));},
                child: Container(
                  height: 150,
                  width: 400,
                  child: Card(
                    color: Colors.green,
                    elevation: 10,
                    child: Center(child: Text("Lesson 1 - \nThe Basics of Hindi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
                    shape:BeveledRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Container(
                height: 150,
                width: 400,
                child: Card(
                  color: Colors.green,
                  elevation: 10,
                  child: Center(child: Text("Lesson 2 - \nThe Basics - 2 of Hindi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
                  shape:BeveledRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Container(
                height: 150,
                width: 400,
                child: Card(
                  color: Colors.green,
                  elevation: 10,
                  child: Center(child: Text("Lesson 3 - \nSome Hindi Quotes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
                  shape:BeveledRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Container(
                height: 150,
                width: 400,
                child: Card(
                  color: Colors.greenAccent,
                  elevation: 10,
                  child: Center(child: Text("Lesson 4 - \nImportant Lesson",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),)),
                  shape:BeveledRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Container(
                height: 150,
                width: 400,
                child: Card(
                  color: Colors.green,
                  elevation: 10,
                  child: Center(child: Text("Lesson 5 - \nLet's Bind Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
                  shape:BeveledRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
