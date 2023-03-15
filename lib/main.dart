import 'package:admin_dashboard/src/my_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  // js.context.callMethod('history.pushState', [null, null, '/newpage']);

  // // replace the current history entry when navigating within the same page
  // js.context.callMethod('history.replaceState', [null, null, '/currentpage']);

  // // listen for changes to the browser's navigation state
  // js.context['window'].addEventListener(
  //   'popstate',
  //   (event) {},
  // );

  WidgetsFlutterBinding.ensureInitialized();
  if (TargetPlatform.windows == defaultTargetPlatform ||
      TargetPlatform.macOS == defaultTargetPlatform) {
    setWindowTitle('AdminKit');
    setWindowMinSize(const Size(480, 360));
    setWindowMaxSize(Size.infinite);
  }
  usePathUrlStrategy();

  runApp(
    const MyApp(),
  );
}
