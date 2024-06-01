import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CreateNewAccaunt extends StatefulWidget {
  const CreateNewAccaunt({super.key});

  @override
  State<CreateNewAccaunt> createState() => _CreateNewAccauntState();
}

class _CreateNewAccauntState extends State<CreateNewAccaunt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 56, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create New Accaunt',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF001254),
                        ),
                      ),
                      prefixIcon: const Icon(
                        Iconsax.direct_right,
                      ),
                      labelText: 'First Name',
                      //suffixIcon: const Icon(Iconsax.user),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                      decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF001254),
                      ),
                    ),
                    prefixIcon: const Icon(
                      Iconsax.direct_right,
                    ),
                    labelText: 'Last Name',
                    //suffixIcon: const Icon(Iconsax.user),
                  )),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF001254),
                ),
              ),
              prefixIcon: const Icon(
                Iconsax.user_edit,
              ),
              labelText: 'Username',
              //suffixIcon: const Icon(Iconsax.user),
            )),
            const SizedBox(height: 16),
            TextFormField(
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF001254),
                ),
              ),
              prefixIcon: const Icon(
                Iconsax.password_check,
              ),
              labelText: 'E-Mail',
            )),
            const SizedBox(height: 16),
            TextFormField(
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF001254),
                ),
              ),
              prefixIcon: const Icon(
                Iconsax.direct,
              ),
              labelText: 'Phone number',
              //suffixIcon: const Icon(Iconsax.password_check4),
            )),
            const SizedBox(height: 16),
            TextFormField(
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF001254),
                ),
              ),
              prefixIcon: const Icon(
                Iconsax.call,
              ),
              labelText: 'Password',
              //suffixIcon: const Icon(Iconsax.d_cube_scan),
            )),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'I agree to',
                          style: Theme.of(context).textTheme.bodyMedium),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: const Color(0xFF4B68ff),
                              decoration: TextDecoration.underline,
                              decorationColor: const Color(0xFF4B68ff),
                            ),
                      ),
                      TextSpan(
                          text: 'and',
                          style: Theme.of(context).textTheme.bodyMedium),
                      TextSpan(
                        text: 'Terms of use',
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: const Color(0xFF4B68ff),
                              decoration: TextDecoration.underline,
                              decorationColor: const Color(0xFF4B68ff),
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
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
            Row(
              children: [
                const Flexible(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                    indent: 40,
                    endIndent: 5,
                  ),
                ),
                const SizedBox(width: 6),
                Text('Or Sing Up With',
                    style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(width: 6),
                const Flexible(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 40,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
