import 'package:flutter/material.dart';

import 'caht_details_zain_page.dart';
import 'call_ranging.dart';

class CahtDetailsQassemPage extends StatelessWidget {
  const CahtDetailsQassemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomChatDetailsWidget(
        titelPerson: 'Qassem',
        assetNamePerson: 'assets/images/Qassem.png',
        onTapCall: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CallRanging()));
        },
      ),
    );
  }
}
