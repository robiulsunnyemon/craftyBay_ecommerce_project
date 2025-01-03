import 'package:dhakashop/presentation/screens/otp_verification_screen.dart';
import 'package:dhakashop/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {

  final TextEditingController _emailTEController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AssetsPath.appLogoSvg,width: 100,),
                const SizedBox(height: 16,),
                Text("Welcome Back",style: Theme.of(context).textTheme.headlineLarge,),
                const SizedBox(height: 4,),
                Text("Enter Your Email Address",style: Theme.of(context).textTheme.headlineSmall,),
                const SizedBox(height: 16,),
                TextFormField(
                  controller: _emailTEController,
                  decoration:const InputDecoration(
                    hintText: "Email"
                  ),
                ),
                const SizedBox(height: 16,),
                ElevatedButton(
                  onPressed: (){
                    Get.to(()=>OtpVerificationScreen(email: _emailTEController.text,));
                  },
                  child:const Text("Next"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
