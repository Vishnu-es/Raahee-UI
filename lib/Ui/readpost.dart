import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raahee/dataModel/data.dart';
import 'package:raahee/dataModel/model.dart';
import 'addComment.dart';

class readPost extends StatefulWidget {
  sendsdetails(String name, String Comment) {}
  @override
  _readPostState createState() => _readPostState();
}

class _readPostState extends State<readPost> {
  List<model> displaydata = List<model>();
  dataToDisplay dt = dataToDisplay();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    displaydata = dt.getDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => addComments()),
          );
        },
      ),
      body: Container(
        child: ListView.builder(
          itemCount: displaydata.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return displayPost(
              name: displaydata[index].name,
              comment: displaydata[index].comment,
            );
          },
        ),
      ),
    );
  }
}

class displayPost extends StatelessWidget {
  final String name, comment;

  const displayPost({Key key, this.name, this.comment}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(left: 40, right: 40, bottom: 30),
          width: 400,
          height: MediaQuery.of(context).size.height / 1.6,
          decoration: BoxDecoration(
              color: Colors.deepOrange.shade100,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 18.0, bottom: 5, right: 8, left: 8),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey.shade500,
                        radius: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 10),
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                        "Date",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8.0, top: 10),
                      child: Text(
                        comment,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("Comment")],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
