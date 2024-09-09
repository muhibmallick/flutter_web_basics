import 'package:flutter/material.dart';
import 'package:flutter_web_basics/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_web_basics/widgets/centered_view/centered_view.dart';
import 'package:flutter_web_basics/widgets/course_details/course_details.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(
                children: <Widget>[
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction('Join Course'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
