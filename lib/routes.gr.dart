// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:navigation_test_app/screens/main_screen.dart' as _i3;
import 'package:navigation_test_app/screens/tab1_screen.dart' as _i4;
import 'package:navigation_test_app/screens/tab2_screen.dart' as _i6;
import 'package:navigation_test_app/screens/tab3_screen.dart' as _i7;
import 'package:navigation_test_app/screens/test_screen.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    GroupScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.MainScreen();
        }),
    GroupTab1Router.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    GroupTab2Router.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    GroupTab3Router.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    Tab1ScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.Tab1Screen();
        }),
    TestRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.TestScreen();
        }),
    Tab2ScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.Tab2Screen();
        }),
    Tab3ScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.Tab3Screen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: 'group/', fullMatch: true),
        _i1.RouteConfig(GroupScreenRoute.name, path: 'group/', children: [
          _i1.RouteConfig(GroupTab1Router.name, path: 'tab1', children: [
            _i1.RouteConfig(Tab1ScreenRoute.name, path: ''),
            _i1.RouteConfig(TestRoute.name, path: 'test'),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i1.RouteConfig(GroupTab2Router.name, path: 'tab2', children: [
            _i1.RouteConfig(Tab2ScreenRoute.name, path: ''),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i1.RouteConfig(GroupTab3Router.name, path: 'tab3', children: [
            _i1.RouteConfig(Tab3ScreenRoute.name, path: ''),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ])
        ])
      ];
}

class GroupScreenRoute extends _i1.PageRouteInfo {
  const GroupScreenRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'group/', initialChildren: children);

  static const String name = 'GroupScreenRoute';
}

class GroupTab1Router extends _i1.PageRouteInfo {
  const GroupTab1Router({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'tab1', initialChildren: children);

  static const String name = 'GroupTab1Router';
}

class GroupTab2Router extends _i1.PageRouteInfo {
  const GroupTab2Router({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'tab2', initialChildren: children);

  static const String name = 'GroupTab2Router';
}

class GroupTab3Router extends _i1.PageRouteInfo {
  const GroupTab3Router({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'tab3', initialChildren: children);

  static const String name = 'GroupTab3Router';
}

class Tab1ScreenRoute extends _i1.PageRouteInfo {
  const Tab1ScreenRoute() : super(name, path: '');

  static const String name = 'Tab1ScreenRoute';
}

class TestRoute extends _i1.PageRouteInfo {
  const TestRoute() : super(name, path: 'test');

  static const String name = 'TestRoute';
}

class Tab2ScreenRoute extends _i1.PageRouteInfo {
  const Tab2ScreenRoute() : super(name, path: '');

  static const String name = 'Tab2ScreenRoute';
}

class Tab3ScreenRoute extends _i1.PageRouteInfo {
  const Tab3ScreenRoute() : super(name, path: '');

  static const String name = 'Tab3ScreenRoute';
}
