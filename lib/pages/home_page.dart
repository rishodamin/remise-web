import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:remise_web/global_variables.dart';
import 'package:remise_web/widgets/card.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: GlobalVariables.appBarGradient,
          ),
        ),
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/logo.jpeg"),
            ),
            SizedBox(width: 20),
            Text(
              'Remise',
              style: TextStyle(
                letterSpacing: -1.25,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                '.in',
                style: TextStyle(
                  letterSpacing: -1.25,
                  fontSize: 22,
                ),
              ),
            )
          ],
        ),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: AnimatedTextKit(
              displayFullTextOnTap: true,
              totalRepeatCount: 1,
              animatedTexts: [
                TyperAnimatedText(GlobalVariables.mainMessage,
                    textStyle: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          _card("About", GlobalVariables.aboutMessage),
          const Productcard(
            imageUrl: "assets/karan_fencer.jpeg",
            height: 400,
          ),
          _card("Why Choose Remise?", GlobalVariables.whyChooseMessage),
          _card("finally...", GlobalVariables.finalMessage),
          const SizedBox(height: 50),
          _footer(context),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _card(String title, String content) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: GlobalVariables.remiseBlueColor,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              content,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _footer(BuildContext context) {
    final Uri termsUrl = Uri.parse(
      'https://drive.google.com/file/d/1-H5xbhXzy_b9F0ub0PZU65K3_vZ15lqE/view',
    );
    final Uri privacyPolicyUrl = Uri.parse(
      'https://drive.google.com/file/d/1-FcMRqMj-ytRY73kun8K5jzu5wnibOwD/view',
    );
    final Uri contactUsUrl = Uri.parse(
      'https://drive.google.com/file/d/1-PpGHePAlmJTHdmNMEGmj-WLvn18ozzn/view',
    );
    final Uri shippingPolicyUrl = Uri.parse(
      'https://drive.google.com/file/d/13W3AP1ZTcAleOOrdmGP49BJ_8On3fvJi/view',
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  launchUrl(contactUsUrl);
                },
                child: const Text("Contact Us"),
              ),
              GestureDetector(
                onTap: () {
                  launchUrl(termsUrl);
                },
                child: const Text("Terms & Conditions"),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  launchUrl(privacyPolicyUrl);
                },
                child: const Text("Privacy Policy"),
              ),
              GestureDetector(
                onTap: () {
                  launchUrl(shippingPolicyUrl);
                },
                child: const Text("Shipping and Delivery Policy"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
