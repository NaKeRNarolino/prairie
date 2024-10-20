import "package:go_router/go_router.dart";
import "package:prairie/features/home_screen/home_screen.dart";
import "package:prairie/features/new_project_screen/new_project_screen.dart";

final GoRouter routerConfig = GoRouter(initialLocation: "/home", routes: [
  GoRoute(
    path: "/home",
    name: "home",
    builder: (context, state) {
      return HomeScreen();
    },
  ),
  GoRoute(
    path: "/new_project",
    name: "new_project",
    builder: (context, state) {
      return NewProjectScreen();
    },
  ),
]);
