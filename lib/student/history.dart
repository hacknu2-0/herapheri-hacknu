import 'package:flutter/material.dart';
import 'package:hacknu2/components/projectdisplaycardstudent.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}
//Class History
class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'History',
        ),
        flexibleSpace: Container(
          /*
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),

           */
        ),
      ),
      body: Container(
        /*
            decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.3],
            colors: [Colors.green, Colors.blue])
            ),

           */
        child: ListView(
          children: <Widget>[
        //    ProjectDisplayCard(projectName: "XYZ",minStudents: "1",maxStudents: "4",teamDistribution: "Random",startDate: "1/2/2020",endDate: "2/2/2020",),
          //  ProjectDisplayCard(projectName: "XYZ",minStudents: "1",maxStudents: "4",teamDistribution: "Random",startDate: "1/2/2020",endDate: "2/2/2020",),
            //ProjectDisplayCard(projectName: "XYZ",minStudents: "1",maxStudents: "4",teamDistribution: "Random",startDate: "1/2/2020",endDate: "2/2/2020",),
           // ProjectDisplayCard(projectName: "XYZ",minStudents: "1",maxStudents: "4",teamDistribution: "Random",startDate: "1/2/2020",endDate: "2/2/2020",),
           // ProjectDisplayCard(projectName: "XYZ",minStudents: "1",maxStudents: "4",teamDistribution: "Random",startDate: "1/2/2020",endDate: "2/2/2020",),
           // ProjectDisplayCard(projectName: "XYZ",minStudents: "1",maxStudents: "4",teamDistribution: "Random",startDate: "1/2/2020",endDate: "2/2/2020",),
           // ProjectDisplayCard(projectName: "XYZ",minStudents: "1",maxStudents: "4",teamDistribution: "Random",startDate: "1/2/2020",endDate: "2/2/2020",),

          ],
        ),
      ),
    );
  }
}
