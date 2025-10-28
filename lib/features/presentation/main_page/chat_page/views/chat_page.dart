import 'package:flutter/material.dart';

import '../../../../../core/extension/extension.dart';
import '../widgets/caht_details_qassem_page.dart';
import '../widgets/caht_details_zain_page.dart';
import '../widgets/chat_details_lillian_page.dart';
import '../widgets/massage_widget.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/PatternTopRight.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Chat',
                      style: context.kTextTheme.headlineSmall!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const CahtDetailsDianneRussellPage(),
                        ),
                      ),
                      child: const MassageChatWidget(
                        image: 'assets/images/Zain.png',
                        titel: 'Zain',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CahtDetailsQassemPage(),
                        ),
                      ),
                      child: const MassageChatWidget(
                        image: 'assets/images/Qassem.png',
                        titel: 'Qassem',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const ChatDetailsLesliealexanderPage(),
                        ),
                      ),
                      child: const MassageChatWidget(
                        image: 'assets/images/Lillian.png',
                        titel: 'Lillian',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
