import 'package:flutter/material.dart';
import 'package:online_exam_app/core/Assets/app_assets.dart';
import 'package:online_exam_app/core/Widgets/Custome_Elevated_Button.dart';
import 'package:online_exam_app/core/Widgets/custom_text_field.dart';
import 'package:online_exam_app/core/extensions/extensions.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedindex = 0;

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
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onNavbarSelectedIndex,
        currentIndex: selectedindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.lightBlue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: AppColors.blue),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.secondnavbar, color: AppColors.blue),
            label: "Result",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined, color: AppColors.blue),
            label: "Profile",
          ),
        ],
      ),
      body: Center(
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
              hint: "Mohamed Yasser",
            ).setHorizontalAndVerticalPadding(context,0.05,0.04),
            Row(
              children: [
                SizedBox(width: 16),
                Expanded(
                  child: CustomeTextFormField(
                    label: 'Fisrt name',
                    hint: "Mohamed",
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: CustomeTextFormField(
                    label: 'Last Name',
                    hint: "Yasser",
                  ),
                ),
                SizedBox(width: 16),
              ],
            ).setHorizontalAndVerticalPadding(context, 0.005, 0.0050),
            const SizedBox(height: 13,),
            CustomeTextFormField(
              label: "Email",
              hint: "moyasser20@gmail.com",
            ).setHorizontalAndVerticalPadding(context,0.05,0.003),
            const SizedBox(height: 13,),
            CustomeTextFormField(
              label: "Password",
              hint: "Mohamed Yasser",
              suffixText: "Change",
            ).setHorizontalAndVerticalPadding(context,0.05,0.001),
            const SizedBox(height: 13,),
            CustomeTextFormField(
              label: "Phone Number",
              hint: "13212312",
            ).setHorizontalAndVerticalPadding(context,0.05,0.003),
            const SizedBox(height: 50,),
            CustomeElevatedButton(text: "Update", onPressed: (){})
          ],
        ),
      ),
    );
  }

  _onNavbarSelectedIndex(int index) {
    selectedindex = index;
    setState(() {});
  }
}
