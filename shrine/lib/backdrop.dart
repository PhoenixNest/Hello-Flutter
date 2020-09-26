import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/product.dart';

// TODO: Add velocity constant (104)
const double _mFlingVelocity = 2.0;

class BackDrop extends StatefulWidget {
  final Category currentCategory;
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontTitle;
  final Widget backTitle;

  const BackDrop(
      {@required this.currentCategory,
      @required this.frontLayer,
      @required this.backLayer,
      @required this.frontTitle,
      @required this.backTitle})
      : assert(currentCategory != null),
        assert(frontLayer != null),
        assert(backLayer != null),
        assert(frontTitle != null),
        assert(backTitle != null);

  @override
  _BackdropState createState() => _BackdropState();
}

// TODO: Add _FrontLayer class (104)
class _FrontLayer extends StatelessWidget {
  // TODO: Add on-tap callback (104)
  final VoidCallback onTap;
  final Widget child;

  const _FrontLayer({
    Key key,
    this.onTap,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16.0,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(46.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // TODO: Add a GestureDetector (104)
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onTap,
            child: Container(
              height: 40.0,
              alignment: AlignmentDirectional.centerStart,
            ),
          ),
          Expanded(
            child: child,
          )
        ],
      ),
    );
  }
}

// TODO: Add _BackdropTitle class (104)
// TODO: Add _BackdropState class (104)
class _BackdropState extends State<BackDrop>
    with SingleTickerProviderStateMixin {
  final GlobalKey _backdropKey = GlobalKey(debugLabel: "Backdrop");

  // TODO: Add AnimationController widget (104)
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      value: 1.0,
      vsync: this,
    );
  }

  // TODO: Add override for didUpdateWidget (104)
  @override
  void didUpdateWidget(BackDrop oldWidget) {
    super.didUpdateWidget(oldWidget);

    //TODO: Close the front layer when the menu has been selected (104)
    if (widget.currentCategory != oldWidget.currentCategory) {
      _toggleBackdropLayerVisibility();
    } else if (!_frontLayerVisible) {
      _animationController.fling(velocity: _mFlingVelocity);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // TODO: Add functions to get and change front layer visibility (104)
  bool get _frontLayerVisible {
    final AnimationStatus status = _animationController.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  void _toggleBackdropLayerVisibility() {
    _animationController.fling(
        velocity: _frontLayerVisible ? -_mFlingVelocity : _mFlingVelocity);
  }

  // TODO: Add BuildContext and BoxConstraints parameters to _buildStack (104)
  Widget _buildStack(BuildContext context, BoxConstraints constraints) {
    const double layerTitleHeight = 48.0;
    final Size layerSize = constraints.biggest;
    final double layerTop = layerSize.height - layerTitleHeight;

    Animation<RelativeRect> layerAnimation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(
          0.0, layerTop, 0.0, layerTop - layerSize.height),
      end: RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
    ).animate(_animationController.view);

    return Stack(
      key: _backdropKey,
      children: <Widget>[
        ExcludeSemantics(
          child: widget.backLayer,
          excluding: _frontLayerVisible,
        ),
        // TODO: Add a PositionedTransition (104)
        PositionedTransition(
          rect: layerAnimation,
          child: _FrontLayer(
            // TODO: Implement onTap property on _BackdropState (104)
            onTap: _toggleBackdropLayerVisibility,
            child: widget.frontLayer,
          ),
        ),
        // TODO: Wrap front layer in _FrontLayer (104)
        // _FrontLayer(
        //   child: widget.frontLayer,
        // )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      brightness: Brightness.light,
      elevation: 0.0,
      // TODO: Replace leading menu icon with IconButton (104),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          _toggleBackdropLayerVisibility();
        },
      ),
      // TODO: Remove leading property (104)
      // TODO: Create title with _BackdropTitle parameter (104)
      title: Text("Shrine"),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            semanticLabel: "Search",
          ),
          onPressed: () {
            // TODO: Add open login (104)
          },
        ),
        IconButton(
          icon: Icon(
            Icons.tune,
            semanticLabel: "Filter",
          ),
          onPressed: () {
            // TODO: Add open login (104)
          },
        )
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: LayoutBuilder(
        builder: _buildStack,
      ),
    );
  }
}
