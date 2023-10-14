import 'package:flutter/material.dart';
import 'package:to_do/ui/utilits/app_color.dart';
import 'package:to_do/ui/utilits/app_theme.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24,vertical: 18 ),
   child: Slidable(
        startActionPane: ActionPane(
            motion: StretchMotion(),
            extentRatio: .3,
            children: [
              SlidableAction(
                borderRadius: BorderRadius.circular(12),
                onPressed: (_){},
                backgroundColor: Colors.red ,
                foregroundColor: AppColor.white,
                icon: Icons.delete,
                label: 'Delete',
                  )
            ]
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical:20 ,horizontal: 16 ),
          height: MediaQuery.of(context).size.height * .13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:  AppColor.white
          ),
          child: Row(
            children: [
              VerticalDivider(),
              SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Play basket ball",style: AppTheme.tackTitleTextStyle,),
                  SizedBox(height: 6),
                  Text("Description",style: AppTheme.tackDescriptionTextStyle,textAlign: TextAlign.start,)
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6,horizontal: 20),
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(12)
                ),
                child:
                Icon(Icons.check,color: AppColor.white),
              )
            ],
          ),
        ),
      ),
    );

  }
}
