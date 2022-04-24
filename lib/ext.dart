import 'package:flutter/material.dart';

extension ContextDetails on BuildContext {
  /// returns screen size
  Size get screenSize => MediaQuery.of(this).size;

  /// returns screen height
  double get screenHeight => MediaQuery.of(this).size.height;

  /// returns screen width
  double get screenWidth => MediaQuery.of(this).size.width;

  /// returns screen width
  double get screenAspectRatio => MediaQuery.of(this).size.aspectRatio;

  /// Responsive design
  double responsive(double size, {Axis axis = Axis.vertical}) {
    final currentSize =
        axis == Axis.horizontal ? screenSize.width : screenSize.height;
    final designSize = axis == Axis.horizontal
        ? _AppConstants.designScreenSize.width
        : _AppConstants.designScreenSize.height;

    return size * currentSize / designSize;
  }
}

class _AppConstants {
  static const Size designScreenSize = Size(375, 754);
}

extension RxNavigation on BuildContext {
  ///  Navigate to a particular route
  void navigateTo(Widget child) => Navigator.push(this, _animateRoute(child));

  /// Navigate back
  void navigateBack() => Navigator.pop(this);

  /// Replace sreen with named route
  void replaceScreen({required Widget child}) =>
      Navigator.pushReplacement(this, _animateRoute(child));
}

Route _animateRoute(Widget _child) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => _child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        final tween = Tween(begin: begin, end: end);
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      });
}
