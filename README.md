<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

The Dart TimelineTree widget provides a hierarchical visualization of chronological events or activities, designed specifically for tracking a user's mission history. Currently in its early stages, the project aims to evolve with community contributions for enhanced functionality.

Inspired by the app at https://schoolofnewafrica.com/, the Dart TimelineTree seeks to offer an intuitive solution for mission tracking, inviting collaborative efforts to refine and expand its capabilities.


## Features

![stages_timeline_tree](https://github.com/bright2kwame/history_timeline_feed/blob/timeline_tree_plugin/assets/stages_timeline_tree.png)
![analytics_timeline_tree](https://github.com/bright2kwame/history_timeline_feed/blob/timeline_tree_plugin/assets/analytics_timeline_tree.png)
![events_timeline_tree](https://github.com/bright2kwame/history_timeline_feed/blob/timeline_tree_plugin/assets/events_timeline_tree.png)

• Progress indicator 
• highly customisable nodes 
• Customisable styling options

## Getting started

To install the package, run this command:

```
 $ flutter pub add timeline_tree

```

This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

```yaml
dependencies:
  timeline_tree: ^0.0.1

```

Import it and use it in your dart code:

```
import 'package:timeline_tree/timeline_tree.dart';

```

## Usage
NODE ARRANGEMENT

• Position Node Left 
```dart
TimelinePluginModel(
          position: TimelinePluginViewPosition.left,
          child: Container(
            child: Text("Stage 2"),
          ),
```
• Position Node Right 

```dart
TimelinePluginModel(
          position: TimelinePluginViewPosition.right,
          child: Container(
            child: Text("Stage 2"),
          ),
```


PROGRESS INDICATOR 

• Progress Indicator tint

 ```dart
TimelinePluginModel(
          position: TimelinePluginViewPosition.right,
          child: Container(
            child: Text("Stage 2"),
            isActive: true
          ),
```

```dart
const like = 'sample';
```

## Additional information


@position, is an enum that tells if to position the node to left and right
@isActive, tells if the that object is active or not. This helps for people who want the timeline have states
@child, the view to attached to the tree

```dart
class TimelinePluginModel {
  final TimelinePluginViewPosition position;
  final Widget child;
  final bool isActive;

  TimelinePluginModel({
    required this.position,
    required this.child,
    required this.isActive,
  });
}
```
