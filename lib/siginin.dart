import 'package:flutter/material.dart';
import 'package:flutterapplication/singIn.dart';
import 'package:flutterapplication/newaccaunt.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 56,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          children: [
            const Logoandtitle(),
            const SizedBox(
              height: 16,
            ),
            Form(
              child: Column(
                children: [
                  /// E-Mail
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF001254),
                          ),
                        ),
                        prefix: const Icon(
                          Iconsax.direct_right,
                        ),
                        labelText: 'E-Mail'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  ///Password
                  Obx(
                    () => TextFormField(
                      obscureText: controller.hidePassword.value,
                      controller: controller.password,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF001254),
                          ),
                        ),

                        /// prefix: const Icon(
                        //Iconsax.direct_right,
                        /// ),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          onPressed: () => controller.hidePassword.value =
                              !controller.hidePassword.value,
                          icon: const Icon (Iconsax.eye_slash),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  /// Remember
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text('Remember Me'),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Forget Password'))
                    ],
                  ),
                  const SizedBox(height: 16),

                  /// Sign in
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const SingIn());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6750A4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          )),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  ///crate new account
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const CreateNewAccaunt());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6750A4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          )),
                      child: const Text(
                        'Crate new Account',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

/// Welcome
class Logoandtitle extends StatelessWidget {
  const Logoandtitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          height: 160,
          image: AssetImage('assets/images/logo.png'),
        ),
        const SizedBox(height: 8),
        Text(
          'Welocome',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}

/// yordamchi class pasword

