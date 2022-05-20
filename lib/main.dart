import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'addata.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MaterialApp(
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  void initState() {

    super.initState();
    Ads.CInterstitialAd();
    Ads.showInterstitialAd();
    Ads.createRewardedAd();
    Ads.showRewardedAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
          onPressed: () {
            Ads.createRewardedAd();
            Ads.showRewardedAd();
          },
          child: Text("AD ON")),
    );
  }
}
