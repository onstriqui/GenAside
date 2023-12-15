import 'package:flutter/material.dart';
import 'package:genasidefinale/app_bar.dart';

class brand extends StatefulWidget {
  const brand({Key? key}) : super(key: key);

  @override
  _brandState createState() => _brandState();
}

class _brandState extends State<brand> {
  bool isWatermelonIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Coca Cola',
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 16.0),
          Image.asset(
            'assets/cocacola.png',
            width: 400.0,
            height: 236.0,
            fit: BoxFit.contain,
          ),

          Row(
            children: [
              IconButton(
                icon: Image.asset(
                  isWatermelonIcon
                      ? 'assets/watermelon.png'
                      : 'assets/Gwatermelon.png',
                  width: 49.0,
                  height: 51.0,
                ),
                onPressed: () {
                  setState(() {
                    isWatermelonIcon = !isWatermelonIcon;
                  });
                },
              ),
              const SizedBox(width: 5.0),
              const Text(
                '10K have Boycotted this Brand',
                style: TextStyle(fontSize: 17.0),
              ),
            ],
          ),

          const Text(
            'Coca-Cola has angered activists after it was discovered that they had sent thousands of dollars to an extremist pro-settlement Israeli group that has described the Nakba as “nonsense” and has launched controversial smear campaigns against left-wing Jews critical of Israeli policy. A document from the Israel Corporations Authority has revealed that Israel’s Coca-Cola franchisee, the Central Bottling Company, donated 13,850 dollars  (50,000 shekels) to fascist group Im Tirtzu in 2015. Im Tirtzu’s director Matan Peleg had even submitted a request to the Israel Corporations Authority to keep the large donation confidential, which was later rejected. The request was rejected after the Central Bottling Company failed to send a letter explaining why the donation should be kept confidential, leaving the authority with no reason to make an exception to the policy of the Registrar of Non-Profit Organisations.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 17.0,
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Your impact in numbers',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.red),
          ),
          const SizedBox(height: 16.0),
          Image.asset(
            'assets/market.png',
            width: 400.0,
            height: 236.0,
            fit: BoxFit.contain,
          ),
        ],
      ),
      bottomNavigationBar: CBottomAppBar(),
    );
  }
}
