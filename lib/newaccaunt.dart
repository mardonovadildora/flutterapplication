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
                      labelText: 'First Name',
                      suffixIcon: const Icon(Iconsax.user),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
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
                    labelText: 'Last Name',
                    suffixIcon: const Icon(Iconsax.user),
                  )),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: TextFormField(
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
                labelText: 'Username',
              )),
            ),
          ],
        ),
      ),
    );
  }
}
