import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hacksmiles/theme/styles.dart';
import 'package:hacksmiles/widgets/header.widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  bool isWeb = false;
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: HeaderWidget(
            title: "Loja",
          ),
        ),
      ),
      body: isWeb
          ? Stack(
              children: [
                WebView(
                  initialUrl: 'https://www.shoppingsmiles.com.br/',
                  javascriptMode: JavascriptMode.unrestricted,
                  onPageFinished: (finish) {
                    setState(() {
                      isLoading = false;
                    });
                  },
                ),
                isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(primaryColor),
                        ),
                      )
                    : Stack(),
              ],
            )
          : SafeArea(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset('lib/assets/store.png')),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Troque seus pontos",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Troque seus pontos pela sua recompensa na loja Smiles. Chame o responsável e efetue a troca com a conta dele",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xff8C8792),
                        fontSize: 17.5,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: 45,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        onPressed: () => setState(() {
                          isWeb = true;
                        }),
                        color: secundaryColor,
                        textColor: Colors.white,
                        child: Text(
                          "IR PARA A LOJA",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
