import 'package:flutter/material.dart';
import 'package:online_exam_app/core/Widgets/Custome_Elevated_Button.dart';
import 'package:online_exam_app/core/Widgets/custom_text_field.dart';
import 'package:online_exam_app/core/extensions/extensions.dart';
import 'package:online_exam_app/core/routes/app_routes.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/me.png"),
                  ),
                  Positioned(bottom: 0, right: 4, child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color:AppColors.blue[50]
                    ),
                    padding: EdgeInsets.all(4),
                    child: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 20,),
                  )),
                ],
              ),
              CustomeTextFormField(
                label: "User name",
                enabled: false,
                initialText: "Mohamed_Yasser",
              ).setHorizontalAndVerticalPadding(context,0.05,0.04),
              Row(
                children: [
                  SizedBox(width: 16),
                  Expanded(
                    child: CustomeTextFormField(
                      label: 'Fisrt name',
                      enabled: false,
                      initialText: "Mohamed",
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: CustomeTextFormField(
                      label: 'Last Name',
                      enabled: false,
                      initialText: "Yasser",
                    ),
                  ),
                  SizedBox(width: 16),
                ],
              ).setHorizontalAndVerticalPadding(context, 0.005, 0.0050),
              const SizedBox(height: 13,),
              CustomeTextFormField(
                label: "Email",
                enabled: false,
                initialText: "moyasser20@gmail.com",
              ).setHorizontalAndVerticalPadding(context,0.05,0.003),
              const SizedBox(height: 13,),
              CustomeTextFormField(
                label: "Password",
                readonly: true,
                initialText: "******",
                suffixText: "Change",
                onPressed: (){Navigator.of(context).pushNamed(AppRoutes.changePassword);},
              ).setHorizontalAndVerticalPadding(context,0.05,0.001),
              const SizedBox(height: 13,),
              CustomeTextFormField(
                label: "Phone Number",
                enabled: false,
                initialText: "1234567890987",
              ).setHorizontalAndVerticalPadding(context,0.05,0.003),
              const SizedBox(height: 50,),
              CustomeElevatedButton(text: "Update", onPressed: (){
                Navigator.of(context).pushNamed(AppRoutes.questionsScreen);
              })
            ],
          ),
        ),
      ),
    );
  }
}
