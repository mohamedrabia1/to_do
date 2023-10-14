import 'package:flutter/material.dart';
import 'package:to_do/ui/utilits/app_color.dart';
import 'package:to_do/ui/utilits/app_theme.dart';
import 'package:to_do/ui/widgets/my_text_field.dart';

class AddBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        height: MediaQuery.of(context).size.height * .4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add New Task",textAlign: TextAlign.center,
            style: AppTheme.bottomSheetTitleTextStyle,),
            SizedBox(height: 8),
            MyTextField(hintText: "Enter your task"),
            SizedBox(height: 8),
            MyTextField(hintText: "Enter task description"),
            SizedBox(height: 30),
            Text("Select date" ,style: AppTheme.bottomSheetTitleTextStyle.copyWith(fontWeight: FontWeight.w500)),
            SizedBox(height: 4),
            Text("11/10/2023", style: AppTheme.bottomSheetTitleTextStyle.copyWith(fontWeight: FontWeight.normal
            ,color: AppColor.grey),textAlign: TextAlign.center,),
            Spacer(),
            ElevatedButton(onPressed: (){}, child:
            Text("Add")
            )
          ],
        ),
      ),
    );

  }
}
