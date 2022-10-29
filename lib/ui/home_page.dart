import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var data = CardFormEditController(
        initialDetails: CardFieldInputDetails(
      complete: true,
    ));
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CardFormField(
              controller: data,
              onCardChanged: (card) {
                print(card);
              },
            ),
            TextButton(
              onPressed: () async {
                print(data.details);
                print(data.details.number);
                print(data.details .expiryYear);
                print(data.details.expiryMonth);
                print(data.details.cvc);
                // create payment method
                // final paymentMethod = await Stripe.instance.createPaymentMethod(
                //     params: PaymentMethodParams.card(
                //         paymentMethodData: PaymentMethodData()));
              },
              child: Text('pay'),
            )
          ],
        ),
      ),
    );
  }
}
