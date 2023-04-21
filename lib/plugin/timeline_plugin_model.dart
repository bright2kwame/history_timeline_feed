import 'package:flutter/material.dart';
import 'package:timeline_plugin/plugin/timeline_enum.dart';

// a model that helps the to place each timeline item
// @position, is an enum that tells if to align left and right
// @isActive, tells if the that object is active or not. This helps for people who want the timeline have states
// @child, the view to attached to the tree

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
