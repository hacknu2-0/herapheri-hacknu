
import 'roundedbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//Each project will be represented as a card known as the Project Card 
//This class defines the design and style of that Project Card.
//The Project Card will display the details of any project that has been created by the faculty members.
class ProjectDisplayCard extends StatefulWidget {
  //These are required parameters for the creation of a Project Card
  ProjectDisplayCard(
      {@required this.projectName,//Name of the Project.
      @required this.minStudents,//Minimum Number of Students
      @required this.maxStudents,//Maximum Number of Students
      @required this.teamDistribution,//Type of Team Distribution: "Random" or "Student preferred"
      @required this.startDate,//Start Date for the project
      @required this.endDate,//End Date for the project
      }
  );
  //Declartion of the class variables which have been used for storing the details of the project
  final String projectName;
  final String minStudents;
  final String maxStudents;
  final String teamDistribution;
  final String startDate;
  final String endDate;


  @override
  _ProjectDisplayCardState createState() => _ProjectDisplayCardState();
}

class _ProjectDisplayCardState extends State<ProjectDisplayCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: new Container(
          child: RaisedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentProjectScreen(courseName: widget.projectName,minStudents: widget.minStudents,maxStudents: widget.maxStudents,teamDistribution: widget.teamDistribution,startDate: widget.startDate,endDate: widget.endDate,)));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Course Name:"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(child: Text(widget.projectName)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Min Students:"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(child: Text(widget.minStudents)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Max Students:"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(child: Text(widget.maxStudents)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Team Distribution:"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(child: Text(widget.teamDistribution)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Start Date:"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(child: Text(widget.startDate)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("End Date:"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(child: Text(widget.endDate)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class StudentProjectScreen extends StatefulWidget {
  StudentProjectScreen({this.courseName,this.minStudents,this.maxStudents,this.teamDistribution,this.startDate,this.endDate});
  final String courseName;
  final String minStudents;
  final String maxStudents;
  final String teamDistribution;
  final String startDate;
  final String endDate;
  @override
  _StudentProjectScreenState createState() => _StudentProjectScreenState();
}

class _StudentProjectScreenState extends State<StudentProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Details"),
      ),
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: <Widget>[
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Course Name",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child: Text(widget.courseName)),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Min Students",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child: Text(widget.minStudents)),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Max Students",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child: Text(widget.maxStudents)),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Team Distribution",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child: Text(widget.teamDistribution)),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Start Date",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child: Text(widget.startDate)),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "End Date:",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child: Text(widget.endDate)),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  "Project Description",
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: RaisedButton(
                        elevation: 10,
                        disabledColor: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                              "This is a CS122 profblsjgbskfblsfkjbsflkjsbsfjbsfkjsjfl fbsfjbsofjbofwofwnownfsflkfnslkfnsofnk onosfnosifnofinofiwnfownfowifnoifnwoifnwofinwofinwofn nofnofnwofnwofknwokfnwokfnwfkfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddject........skjgbsofsfubajb bsifuwfibf isegbikjeowjb  wrjbwjbw riwb wo worjbwerojbw o ojwbojb o otoihrr pwhroh....................................................................."),
                        ))),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RoundedButton(
                          onPressed: (){
                            print("Help");
                          },
                          buttonTitle: "Create Team",
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: RoundedButton(
                          onPressed: (){},
                          buttonTitle: "Join Team",
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),] ,
      ),
    );
  }
}
