import 'package:dhakashop/presentation/screens/home_screen.dart';
import 'package:dhakashop/presentation/screens/otp_verification_screen.dart';
import 'package:dhakashop/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {

  final TextEditingController _firstNameTEController=TextEditingController();
  final TextEditingController _lastNameTEController=TextEditingController();
  final TextEditingController _mobileTEController=TextEditingController();
  final TextEditingController _cityTEController=TextEditingController();
  final TextEditingController _shippingAddressTEController=TextEditingController();
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();


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
                Text("Complete Profile",style: Theme.of(context).textTheme.headlineLarge,),
                const SizedBox(height: 4,),
                Text("Get started with us with your details",style: Theme.of(context).textTheme.headlineSmall,),
                const SizedBox(height: 16,),
                _buildForm(),
                const SizedBox(height: 16,),
                ElevatedButton(
                  onPressed: (){
                    Get.off(()=>const HomeScreen());
                  },
                  child:const Text("Complete"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
                key: _globalKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _firstNameTEController,
                      decoration:const InputDecoration(
                        hintText: "First Name"
                      ),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      controller: _lastNameTEController,
                      decoration:const InputDecoration(
                          hintText: "Last Name"
                      ),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      controller: _mobileTEController,
                      decoration:const InputDecoration(
                          hintText: "Mobile"
                      ),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      controller: _cityTEController,
                      decoration:const InputDecoration(
                          hintText: "City"
                      ),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      controller: _shippingAddressTEController,
                      decoration:const InputDecoration(
                          hintText: "Shipping Address",
                      ),
                      maxLines: 4,
                    ),
                  ],
                ),
              );
  }

  @override
  void dispose() {
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _cityTEController.dispose();
    _shippingAddressTEController.dispose();
    super.dispose();
  }
}
