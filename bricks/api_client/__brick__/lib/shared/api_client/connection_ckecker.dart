import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:{{name}}/di.dart';

abstract class ConnectivityCheck {
  static Future<bool> call() async {
    var connectivityResult = await (Di.connectivity.checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }

  static Stream<ConnectivityResult> get connetionStream {
    return Di.connectivity.onConnectivityChanged;
  }
}
