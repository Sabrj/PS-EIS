// ignore_for_file: must_be_immutable, non_constant_identifier_names, library_private_types_in_public_api
// ignore: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() {
  runApp(const QrCode());
}

class QrCode extends StatefulWidget {
  const QrCode({Key? key}) : super(key: key);
  @override
  _QrCodeState createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  String data = "";

  Scan() async {
    return await FlutterBarcodeScanner.scanBarcode(
            "#000000", "cancel", true, ScanMode.BARCODE)
        .then((value) => setState(() => data = value));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.red, scaffoldBackgroundColor: Colors.orange),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: const EdgeInsets.fromLTRB(40, 80, 40, 0),
              color: Colors.orange,
              child: const Text(
                "Scann ur QR-code",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(100),
              child: QrImage(
                data: "1234567890",
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () async => Scan(),
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              child: const Text("scann ur code"),
            ),
            const ElevatedButton(
                onPressed: null, child: Text("Delete your scan"))
          ],
        ),
        
      ),
    );
  }
}

class FoundCodeScreen extends StatefulWidget {
  final String value;
  final Function() screenClosed;
  const FoundCodeScreen({
    Key? key,
    required this.value,
    required this.screenClosed,
  }) : super(key: key);

  @override
  State<FoundCodeScreen> createState() => _FoundCodeScreenState();
}

class _FoundCodeScreenState extends State<FoundCodeScreen> {
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Found Code"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            widget.screenClosed();
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_outlined,),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Scanned Code:", style: TextStyle(fontSize: 20,),),
              const SizedBox(height: 20,),
              Text(widget.value, style: const TextStyle(fontSize: 16,),),
            ],
          ),
        ),
      ),
    );
  }
}
