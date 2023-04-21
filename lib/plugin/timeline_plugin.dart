// Developed when there was a need for a timeline.
// on a project we were working on.
// Feel free to use and extend a pr if you care

import 'package:flutter/material.dart';
import 'package:timeline_plugin/plugin/timeline_enum.dart';
import 'package:timeline_plugin/plugin/timeline_plugin_model.dart';

// @items, the list of timeline items
// @physics, scroll physics used by listview
// @shrinkWrap, normal wrap used by listviews
// @primary, inherited from the listview
// @lineWidth, the width of the line used in the timeline,
// default for this value is 4.0
// @activelineColor, the color of the tree when active
// @inactivelineColor, the color for the line when not active
// @overlapFactor, the percentage of overlap you want to see, 0.0 to 1.0, where 1.0 means no overlapp

class TimelinePlugin extends StatefulWidget {
  TimelinePlugin(
      {super.key,
      required this.items,
      this.physics = const NeverScrollableScrollPhysics(),
      this.shrinkWrap = true,
      this.primary = false,
      this.lineWidth = 4,
      this.activelineColor = Colors.green,
      this.inactivelineColor = Colors.grey,
      this.overlapFactor = 0.8})
      : assert(overlapFactor > 0),
        assert(lineWidth > 0),
        assert(shrinkWrap == true);
  final List<TimelinePluginModel> items;
  final bool primary;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final double lineWidth;
  final Color inactivelineColor;
  final Color activelineColor;
  final double overlapFactor;

  @override
  State<TimelinePlugin> createState() => _TimelinePluginState();
}

class _TimelinePluginState extends State<TimelinePlugin> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        primary: widget.primary,
        shrinkWrap: widget.shrinkWrap,
        physics: widget.physics,
        itemCount: widget.items.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int pos) {
          return _timelineItemView(pos);
        });
  }

  //view of each line item
  Widget _timelineItemView(int pos) {
    TimelinePluginModel item = widget.items[pos];
    Color lineColor =
        item.isActive ? widget.activelineColor : widget.inactivelineColor;

    return Align(
        alignment: Alignment.topCenter,
        heightFactor: widget.overlapFactor,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _leftWidget(item, lineColor),
              _rightWidget(item, lineColor)
            ],
          ),
        ));
  }

  //the build of the right side of the widget
  Widget _rightWidget(TimelinePluginModel item, Color lineColor) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(
                      color: lineColor, width: widget.lineWidth / 2))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: widget.lineWidth,
                color: item.position == TimelinePluginViewPosition.right
                    ? lineColor
                    : Colors.transparent,
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Opacity(
                      opacity: item.position == TimelinePluginViewPosition.right
                          ? 1.0
                          : 0.0,
                      child: item.child),
                ),
              )
            ],
          )),
    );
  }

  //the build of the left side of the widget
  Widget _leftWidget(TimelinePluginModel item, Color lineColor) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(
                      color: lineColor, width: widget.lineWidth / 2))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Opacity(
                      opacity: item.position == TimelinePluginViewPosition.left
                          ? 1.0
                          : 0.0,
                      child: item.child,
                    ),
                  )),
              Container(
                  width: 10,
                  height: widget.lineWidth,
                  color: item.position == TimelinePluginViewPosition.left
                      ? lineColor
                      : Colors.transparent),
            ],
          )),
    );
  }
}
