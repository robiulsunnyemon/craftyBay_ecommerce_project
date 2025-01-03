import 'package:dhakashop/presentation/screens/complete_profile_screen.dart';
import 'package:dhakashop/presentation/utility/app_colors.dart';
import 'package:dhakashop/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String email;

  const OtpVerificationScreen({super.key, required this.email});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();

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
          
                SvgPicture.asset(
                  AssetsPath.appLogoSvg,
                  width: 100,
                ),
          
                const SizedBox(
                  height: 16,
                ),
          
                Text(
                  "Enter OTP Code",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
          
                const SizedBox(
                  height: 4,
                ),
          
                Text(
                  "A 6 Digit OTP Code has been sent",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
          
                const SizedBox(
                  height: 16,
                ),
          
                _buildPinCodeTextField(context),
          
                const SizedBox(
                  height: 16,
                ),
          
                ElevatedButton(
                  onPressed: () {
                    Get.to(()=>const CompleteProfileScreen());
                  },
                  child: const Text("Next"),
                ),
          
                const SizedBox(
                  height: 24,
                ),
          
                _buildRichText(),
          
                const SizedBox(
                  height: 16,
                ),
          
                TextButton(
                    onPressed: (){},
                    child: const Text("Resend Code"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRichText() {
    return RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500
              ),
              children: [
                TextSpan(
                  text: "This Code will expire in "
                ),
                TextSpan(
                  text: "120s",                      //todo countdown Hw
                  style: TextStyle(
                    color: AppColors.primaryColor,
                  )
                ),
              ]
            ),
          );
  }

  Widget _buildPinCodeTextField(BuildContext context) {
    return PinCodeTextField(
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.transparent,
        selectedColor: AppColors.primaryColor,
        selectedFillColor: Colors.transparent,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.blue.shade50,
      enableActiveFill: true,
      controller: _otpTEController,
      appContext: context,
    );
  }

  @override
  void dispose() {
    _otpTEController.dispose();
    super.dispose();
  }
}
