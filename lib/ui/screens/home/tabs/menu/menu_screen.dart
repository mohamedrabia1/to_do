import 'package:flutter/material.dart';
import 'package:to_do/ui/screens/home/tabs/menu/to_do_widget.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:to_do/ui/utilits/app_color.dart';

class MenuScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .18,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: AppColor.primaryColor,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: AppColor.accentColor,
                    ),
                  )
                ],
              ),
              CalendarTimeline(
                initialDate: DateTime.now(),
                firstDate:DateTime.now().subtract(Duration(days: 365)),
                lastDate: DateTime.now().add(Duration(days: 1095)),
                onDateSelected: (date) => print(date),
                leftMargin: 20,
                monthColor: AppColor.accentColor,
                dayColor: AppColor.black,
                activeDayColor: AppColor.primaryColor,
                activeBackgroundDayColor: AppColor.white,
                dotsColor: Colors.transparent,
                showYears: true,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context , index) => ToDoWidget()
          ),
        ),
      ],
    );
  }
}
