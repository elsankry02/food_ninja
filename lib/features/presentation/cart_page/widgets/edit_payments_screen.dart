import 'package:flutter/material.dart';

import '../../../../core/components/custom_main_appbar_widget.dart';
import 'pyment_cart_widget.dart';

class EditPaymentsScreen extends StatefulWidget {
  const EditPaymentsScreen({super.key});

  @override
  State<EditPaymentsScreen> createState() => _EditPaymentsScreenState();
}

class _EditPaymentsScreenState extends State<EditPaymentsScreen> {
  bool isFirst = false;
  bool isSecond = false;
  bool isThird = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const MainAppBarWidget(titelAppBarPage: 'Payment'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFirst = !isFirst;
                    });
                  },
                  child: PaymentCart(
                    imagePayment: 'assets/svg/paypal.svg',
                    backgroundColor:
                        isFirst ? const Color(0xffF6F6F6) : theme.primaryColor,
                    titelPassword: '2121 6352 8465 ****',
                    titelcolor: isFirst ? Colors.grey : theme.hintColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSecond = !isSecond;
                    });
                  },
                  child: PaymentCart(
                    imagePayment: 'assets/svg/visa.svg',
                    backgroundColor:
                        isSecond ? const Color(0xffF6F6F6) : theme.primaryColor,
                    titelPassword: '2121 6352 8465 ****',
                    titelcolor: isSecond ? Colors.grey : theme.hintColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isThird = !isThird;
                    });
                  },
                  child: PaymentCart(
                    imagePayment: 'assets/svg/Payoneer.svg',
                    backgroundColor:
                        isThird ? const Color(0xffF6F6F6) : theme.primaryColor,
                    titelPassword: '2121 6352 8465 ****',
                    titelcolor: isThird ? Colors.grey : theme.hintColor,
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
