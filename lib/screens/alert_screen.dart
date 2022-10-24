import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text("Alert"),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Contenido de la alerta"),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                ),
              ],
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancelar")),
              TextButton(onPressed: () => Navigator.pop(context), child: const Text("Aceptar")),
            ],
          );
        });
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text("Alerta Cupertino"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Contenido de la alerta"),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                ),
              ],
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancelar", style: TextStyle(color: Colors.red))),
              TextButton(onPressed: () => Navigator.pop(context), child: const Text("Aceptar")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //   backgroundColor: Colors.red,
            //   shape: const StadiumBorder(),
            //   elevation: 50,
            // ),
            onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                "Mostrar Alerta",
                style: TextStyle(fontSize: 16),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
