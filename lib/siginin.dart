import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefix: Icon(
                        Iconsax.direct_right,
                      ),
                      labelText: 'E-Mail'),
                ),
              ],
            ))
          ],
        ),
      )),
    );
  }
}

class Logoandtitle extends StatelessWidget {
  const Logoandtitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          height: 150,
          image: AssetImage('assets/images/logo.png'),
        ),
        Text(
          'Welocome',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
