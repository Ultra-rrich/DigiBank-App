import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: Center(
          child: FlutterSwitch(activeToggleColor: Colors.grey.shade200,
            activeTextColor: Colors.white,
            activeColor: Colors.green,
            width: 55.0,
            height: 30.0,
            valueFontSize: 20.0,
            toggleSize: 25.0,
            value: status,
            borderRadius: 30.0,
            padding: 2.0,
            showOnOff: false,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            },
          ),
        ),
      );
  }
}
