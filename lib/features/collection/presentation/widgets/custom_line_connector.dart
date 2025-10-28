import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timelines_plus/timelines_plus.dart';
import 'package:whisky_shop/gen/assets.gen.dart';

class HistoryTimelineLineConnector extends Connector {
  const HistoryTimelineLineConnector({
    super.key,
    required this.shouldDrawAccent,
  });
  final bool shouldDrawAccent;
  @override
  Widget build(BuildContext context) {
    final direction = getEffectiveDirection(context);
    final thickness = getEffectiveThickness(context);
    final color = getEffectiveColor(context);
    final space = getEffectiveSpace(context);
    final indent = getEffectiveIndent(context);
    final endIndent = getEffectiveEndIndent(context);

    switch (direction) {
      case Axis.vertical:
        return _ConnectorIndent(
          direction: direction,
          indent: indent,
          endIndent: endIndent,
          space: space,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(width: thickness, color: color),
              if (shouldDrawAccent)
                SvgPicture.asset(
                  Assets.icons.accents,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                ),
            ],
          ),
        );
      case Axis.horizontal:
        return Stack(
          children: [
            Container(height: thickness, color: color),
            Icon(Icons.arrow_downward, size: 24, color: color),
          ],
        );
    }
  }
}

class _ConnectorIndent extends StatelessWidget {
  /// Creates a indent.
  ///
  /// The [direction]and [child] must be null. And [space], [indent] and
  /// [endIndent] must be null or non-negative.
  const _ConnectorIndent({
    required this.direction,
    required this.space,
    this.indent,
    this.endIndent,
    required this.child,
  }) : assert(space == null || space >= 0),
       assert(indent == null || indent >= 0),
       assert(endIndent == null || endIndent >= 0);

  /// {@macro timelines.direction}
  final Axis direction;

  /// The connector's cross axis size extent.
  ///
  /// The connector itself is always drawn as a line that is centered within the
  /// size specified by this value.
  final double? space;

  /// The amount of empty space to the leading edge of the connector.
  final double? indent;

  /// The amount of empty space to the trailing edge of the connector.
  final double? endIndent;

  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.child}
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: direction == Axis.vertical ? space : null,
      height: direction == Axis.vertical ? null : space,
      child: Center(
        child: Padding(
          padding: direction == Axis.vertical
              ? EdgeInsetsDirectional.only(
                  top: indent ?? 0,
                  bottom: endIndent ?? 0,
                )
              : EdgeInsetsDirectional.only(
                  start: indent ?? 0,
                  end: endIndent ?? 0,
                ),
          child: child,
        ),
      ),
    );
  }
}
