import 'package:auto_route/auto_route.dart';

import 'screens/group_screen.dart';
import 'screens/tab1_screen.dart';
import 'screens/tab2_screen.dart';
import 'screens/tab3_screen.dart';
import 'screens/test_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[groupTabRouter],
)
class $AppRouter {}

//nested group route with a tab router
const groupTabRouter = AutoRoute(
  initial: true,
  path: 'group/',
  page: GroupScreen,
  children: [
    AutoRoute(
      path: 'tab1',
      name: 'GroupTab1Router',
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: '',
          page: Tab1Screen,
        ),
        AutoRoute(path: 'test', page: TestScreen, name: 'TestRoute'),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      path: 'tab2',
      name: 'GroupTab2Router',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: Tab2Screen),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      path: 'tab3',
      name: 'GroupTab3Router',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: Tab3Screen),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
);
