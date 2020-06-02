import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:control_pad/control_pad.dart';
import 'package:flutter_unity_widget_example/helper/theme.dart';

class WithARkitScreen extends StatefulWidget {
  @override
  _WithARkitScreenState createState() => _WithARkitScreenState();
}

class _WithARkitScreenState extends State<WithARkitScreen> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
  UnityWidgetController _unityWidgetController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    JoystickDirectionCallback onDirectionChanged(
        double degrees, double distance) {
      setRotationSpeed(degrees.toString() + ";" + distance.toString());
    }

    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('Retail Executor'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.orangeAccent),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Card(
          color: Colors.orange[200],
          margin: const EdgeInsets.all(8),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: UnityWidget(
                  onUnityViewCreated: onUnityCreated,
                  isARScene: false,
                  onUnityMessage: onUnityMessage,
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                      width: 400,
                      height: 400,
                      child: JoystickView(
                        onDirectionChanged: onDirectionChanged,
                        backgroundColor: Colors.white38,
                        iconsColor: Colors.deepPurple,
                        innerCircleColor: Colors.deepPurple,
                        size: 170,
                      ))),
            ],
          ),
        ),
      ),
    );
  }

  void setRotationSpeed(String speed) {
    _unityWidgetController.postMessage(
      'Cube',
      'SetRotationSpeed',
      speed,
    );
  }

  void onUnityMessage(controller, message) {
    print('Received message from unity: ${message.toString()}');
  }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }
}
