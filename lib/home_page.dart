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
        child: _leftTimelineItem() ,
        isActive: true,
      ),
      // Add other TimelinePluginModel items as needed
       TimelinePluginModel(
        position: TimelinePluginViewPosition.right,
        child: _rightItemView(),
        isActive: false,
      ),
      TimelinePluginModel(
        position: TimelinePluginViewPosition.left,
        child: _leftTimelineItem() ,
        isActive: true,
      ),
    ];
    return TimelinePlugin(
      items: items,
      overlapFactor: 1.0,
      activelineColor: Color.fromARGB(255, 22, 197, 6),
      inactivelineColor: Colors.grey,
    );
  }

  Widget _rightItemView(){
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                 bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              border: Border.all(color: Colors.grey), // Adding grey border
            ),
            child: ClipRect(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const SizedBox(
                  //   height: 20,
                  // ),
                    Container(
                    height: 100, // Adjust height as needed
                    width: 200, // Adjust width as needed
                    child: Image.asset(
                      'assets/images/2.jpg',
                      fit: BoxFit.cover, // Adjust image fitting
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    '  Out of Africa',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    '  Don\'t Allow',
                    style: TextStyle(
                      color: Color.fromRGBO(85, 87, 90, 1),
                      fontSize: 12,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
  }

  Widget _leftTimelineItem(){
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              border: Border.all(color: Colors.grey), // Adding grey border
            ),
            child: ClipRect(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const SizedBox(
                  //   height: 20,
                  // ),
                    Container(
                    height: 100, // Adjust height as needed
                    width: 200, // Adjust width as needed
                    child: Image.asset(
                      'assets/images/1.jpg',
                      fit: BoxFit.cover, // Adjust image fitting
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    '   Out of Africa',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    '   Don\'t Allow',
                    style: TextStyle(
                      color: Color.fromRGBO(85, 87, 90, 1),
                      fontSize: 12,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
