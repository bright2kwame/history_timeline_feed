import 'package:flutter/material.dart';
import 'package:timeline_plugin/plugin/timeline_enum.dart';
import 'package:timeline_plugin/plugin/timeline_plugin.dart';
import 'package:timeline_plugin/plugin/timeline_plugin_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Timeline"),
        ),
        body:
            _timelineView() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Widget _timelineView() {
    List<TimelinePluginModel> items = [
      TimelinePluginModel(
          position: TimelinePluginViewPosition.left,
          child: Container(
            child: Text("Stage 1"),
          ),
          isActive: true),
      TimelinePluginModel(
          position: TimelinePluginViewPosition.right,
          child: Container(
            child: Text("Stage 2"),
          ),
          isActive: false),
      TimelinePluginModel(
          position: TimelinePluginViewPosition.left,
          child: Container(
            child: Text("Stage 3"),
          ),
          isActive: false)
    ];
    return TimelinePlugin(
      items: items,
      overlapFactor: 0.8,
      activelineColor: Colors.blue,
      inactivelineColor: Colors.grey,
    );
  }
}
