import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raahee/dataModel/data.dart';

class addComments extends StatefulWidget {
  @override
  _addCommentsState createState() => _addCommentsState();
}

class _addCommentsState extends State<addComments> {
  TextEditingController _controller1 = TextEditingController(text: "Mansi");
  TextEditingController _controller2 = TextEditingController(
      text:
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.");
  String Username = "";
  String Comments = "";
  dataToDisplay display = dataToDisplay();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Material(
                        color: Colors.blue.shade50, // button color
                        child: InkWell(
                          splashColor: Colors.blue.shade100, // inkwell color
                          child: SizedBox(
                              width: 56,
                              height: 56,
                              child: Icon(Icons.arrow_back_ios)),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange.shade100,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50))),
                      child: Center(
                          child: Text(
                        "Write a Post",
                        style: TextStyle(fontSize: 32, fontFamily: 'Cookie'),
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 45),
                      child: Text(
                        "Enter your name",
                        style: TextStyle(fontSize: 28, fontFamily: 'Cookie'),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 300,
                  child: Theme(
                    data: ThemeData(primaryColor: Colors.black),
                    child: TextField(
                      controller: _controller1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your name'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 45),
                      child: Text("Write the Post",
                          style: TextStyle(fontSize: 28, fontFamily: 'Cookie')),
                    ),
                  ],
                ),
                Container(
                  width: 300,
                  height: 200,
                  child: Theme(
                    data: ThemeData(
                        primaryColor: Colors.black,
                        secondaryHeaderColor: Colors.black),
                    child: TextField(
                      autofocus: false,
                      maxLines: 7,
                      controller: _controller2,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Comment'),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      margin: EdgeInsets.only(right: 40),
                      child: FlatButton(
                        color: Colors.deepPurple.shade400,
                        child: Text(
                          "Post",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onPressed: () {
                          setState(() {
                            Username = _controller1.text;
                            Comments = _controller2.text;
                            //display.addDetails(Username, Comments);
                          });
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
