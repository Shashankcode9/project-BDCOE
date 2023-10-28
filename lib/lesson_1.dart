import 'package:flutter/material.dart';

class lsn1 extends StatefulWidget {
  const lsn1({super.key});

  @override
  State<lsn1> createState() => _lesson1State();
}

class _lesson1State extends State<lsn1> {
  int _points = 0;
  void _increment(){
    setState((){
      _points++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:
           Padding(
             padding: const EdgeInsets.only(left: 50),
             child: Text('Lets Learn Hindi',
              style: TextStyle(
                color: Colors.white,),),
           ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
              Center(
                child: Container(
                  height: 150,
                  width: 340,
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("- Hello..\n- नमस्ते",style: TextStyle(fontSize: 40,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Colors.deepPurple,size: 50,),),
                        ),
                      ],
                    ),
                    elevation: 20,
                    color: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 150,
                width: 340,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("- My Name Is..\n- मेरा नाम है",style: TextStyle(fontSize: 30,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Colors.deepPurple,size: 50,),),
                      ),
                    ],
                  ),
                  elevation: 20,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 150,
                width: 340,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text("- Yes..\n- हाँ",style: TextStyle(fontSize: 40,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 105),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Colors.deepPurple,size: 50,),),
                      ),
                    ],
                  ),
                  elevation: 20,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 150,
                width: 340,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text("- Thank You..\n- धन्यवाद",style: TextStyle(fontSize: 35,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Colors.deepPurple,size: 50,),),
                      ),
                    ],
                  ),
                  elevation: 20,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 150,
                width: 340,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text("- Sorry..\n- माफी",style: TextStyle(fontSize: 40,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Colors.deepPurple,size: 50,),),
                      ),
                    ],
                  ),
                  elevation: 20,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 150,
                width: 340,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("- How Much ??..\n- कितना",style: TextStyle(fontSize: 30,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Colors.deepPurple,size: 50,),),
                      ),
                    ],
                  ),
                  elevation: 20,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 150,
                width: 340,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text("- GoodBye..\n- अलविदा",style: TextStyle(fontSize: 35,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Colors.deepPurple,size: 50,),),
                      ),
                    ],
                  ),
                  elevation: 20,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
