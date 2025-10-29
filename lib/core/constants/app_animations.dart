import 'package:flutter/material.dart';

class AppAnimations {

  AppAnimations._();


  static const Duration durationFast = Duration(milliseconds: 150);
  static const Duration durationNormal = Duration(milliseconds: 300);
  static const Duration durationSlow = Duration(milliseconds: 500);
  static const Duration durationVerySlow = Duration(milliseconds: 800);


  static const Curve curveEaseIn = Curves.easeIn;
  static const Curve curveEaseOut = Curves.easeOut;
  static const Curve curveEaseInOut = Curves.easeInOut;


  static const Curve curveBounceIn = Curves.bounceIn;
  static const Curve curveBounceOut = Curves.bounceOut;
  static const Curve curveElasticIn = Curves.elasticIn;
  static const Curve curveElasticOut = Curves.elasticOut;


  static const Duration pageTransitionDuration = Duration(milliseconds: 300);
  static const Curve pageTransitionCurve = Curves.fastOutSlowIn;


  static const Duration buttonPressDuration = Duration(milliseconds: 100);
  static const Duration buttonHoverDuration = Duration(milliseconds: 200);


  static const Duration cardHoverDuration = Duration(milliseconds: 200);
  static const Duration cardPressDuration = Duration(milliseconds: 100);

  static const Duration listItemDuration = Duration(milliseconds: 250);
  static const Curve listItemCurve = Curves.easeOut;

  static const Duration fadeInDuration = Duration(milliseconds: 300);
  static const Duration fadeOutDuration = Duration(milliseconds: 200);

  static const Duration slideInDuration = Duration(milliseconds: 300);
  static const Duration slideOutDuration = Duration(milliseconds: 250);

  static const Duration scaleInDuration = Duration(milliseconds: 200);
  static const Duration scaleOutDuration = Duration(milliseconds: 150);

  static const Duration rotationDuration = Duration(milliseconds: 300);

  static const Duration progressDuration = Duration(milliseconds: 800);
  static const Curve progressCurve = Curves.easeInOut;

  static const Duration staggerDelay = Duration(milliseconds: 100);

  static const Duration heroDuration = Duration(milliseconds: 400);
  static const Curve heroCurve = Curves.fastOutSlowIn;

  static const Duration snackbarDuration = Duration(milliseconds: 300);
  static const Duration snackbarDisplayDuration = Duration(seconds: 4);

  static const Duration dialogDuration = Duration(milliseconds: 300);
  static const Curve dialogCurve = Curves.fastOutSlowIn;

  static const Duration bottomSheetDuration = Duration(milliseconds: 300);
  static const Curve bottomSheetCurve = Curves.easeOut;

  static const Duration tabAnimationDuration = Duration(milliseconds: 200);

  static const Duration fabAnimationDuration = Duration(milliseconds: 200);

  static const Duration searchAnimationDuration = Duration(milliseconds: 300);

  static const Duration pullToRefreshDuration = Duration(milliseconds: 200);

  static const Duration loadingAnimationDuration = Duration(milliseconds: 1000);

  static const Duration errorShakeDuration = Duration(milliseconds: 500);

  static const Duration successCheckDuration = Duration(milliseconds: 600);

  static const Duration dreamFadeInDuration = Duration(milliseconds: 500);
  static const Duration goalProgressDuration = Duration(milliseconds: 1000);
  static const Duration questCompleteDuration = Duration(milliseconds: 800);
  static const Duration xpGainDuration = Duration(milliseconds: 600);
  static const Duration journalFadeInDuration = Duration(milliseconds: 400);
}
