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

![timeline_tree](https://github.com/bright2kwame/history_timeline_feed/blob/timeline_tree_plugin/assets/timeline_tree.png)

• Progress indicator 
• Highly customisable nodes 
• Customisable styling options

## Getting started

To install the package, run this command:

```
 $ flutter pub add timeline_tree

```

This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

```yaml
dependencies:
  timeline_tree: ^0.0.2

```

Import it and use it in your dart code:

```
import 'package:timeline_tree/timeline_tree.dart';

```

## Usage

Timeline Model list

```dart
List<TimelinePluginModel> items = [];
```

Node Arrangements

• Position Node Left 
```dart
 var rightModel = TimelinePluginModel(
            isActive: true,
            position: TimelinePluginViewPosition.right,
            child: _timelineItemView(element));
```
• Position Node Right 

```dart
 var rightModel = TimelinePluginModel(
            isActive: false,
            position: TimelinePluginViewPosition.left,
            child: _timelineItemView(element));
```

• Add Models to List 
```dart
 items.add(rightModel);
 items.add(rightModel);
 ```

TIMELINE TREE

• Create Timeline Tree

 ```dart
TimelinePlugin(
        items: items,
        lineWidth: 5,
        shrinkWrap: true,
        primary: false,
        overlapFactor: 0.6,
        activelineColor: AppResourses.appColors.primaryColor,
        physics: const NeverScrollableScrollPhysics(),
      ),
```

## Example


```dart

```

## Additional information

• Timeline Tree

@items, list of model items to be displayed in the timeline
@lineWidth, the width of the line in the timeline
@inactivelineColor, color of the line for inactive region
@activelineColor, color of the line for active regions
@overlapFactor, the fraction for which the oncoming view should overlap

```dart
class TimelinePlugin {
  final List<TimelinePluginModel> items;
  final bool primary;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final double lineWidth;
  final Color inactivelineColor;
  final Color activelineColor;
  final double overlapFactor;
}
```

• Timeline Model

@position, is an enum that tells if to position the node to left and right
@isActive, tells if the that object is active or not. This helps for people who want the timeline have states
@child, the view to attached to the tree

```dart
class TimelinePluginModel(
            isActive,
            position,
            child)
```