import 'dart:typed_data';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Qrscanner extends StatefulWidget {
  const Qrscanner({super.key});

  @override
  State<Qrscanner> createState() => _QrscannerState();
}

class _QrscannerState extends State<Qrscanner> {
  bool isScanCompleted = false;
  bool isWidgetVisible = true;
  String code = "";
  void closeScreen() {
    isScanCompleted = false;
  }

  @override
  void initState() {
    super.initState();
    // Implement some initialization operations here.
  }

  void updateCode(String newCode) {
    setState(() {
      code = newCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Scanner'),
        backgroundColor: const Color.fromARGB(255, 134, 236, 137),
        surfaceTintColor: Colors.blue,
        shadowColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          const SizedBox(height: 0),
          Expanded(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'Scan QR Code',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Scan QR Code'),
              ),
            ]),
          ),
          Expanded(
            flex: 4,
            child: MobileScanner(
              onDetect: (capture) {
                if (!isScanCompleted) {
                  final List<Barcode> barcodes = capture.barcodes;
                  for (final Barcode barcode in barcodes) {
                    String newCode = barcode.rawValue ?? "";
                    print(newCode);
                    if (newCode == "") {
                      setState(() {
                        code = newCode;
                        isWidgetVisible = false;
                      });
                    }
                    updateCode(newCode);
                  }
                }
              },
            ),
          ),
          SizedBox(height: 40),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.amber,
              child: Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(isWidgetVisible ? code : "No QR code detected",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1
                  ),
                  ),
                  
                  ElevatedButton(
                    onPressed: () async {
                     await Clipboard.setData( ClipboardData(text: code)).then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(content: const Align(
                          alignment: Alignment.center,
                           child: Text('Copied to your clipboard !',
                           style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1,
                              
                            ),
                           ),
                         ),
                        duration: const Duration(milliseconds: 1500),
                        width: 300.0, // Width of the SnackBar.
                        padding:  const EdgeInsets.symmetric(
                          horizontal: 4.0,  
                        ),  
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                         borderRadius : BorderRadius.circular(2.0),
                        ),));
                  });
                      // copied successfully
                    },
                    child: Icon(Icons.copy,
                    ),
                  )
                ],
              ),
            ),
            )

          ),
        ]),
      ),
    );
  }
}
