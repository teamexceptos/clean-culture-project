import 'package:connectivity/connectivity.dart';

enum NetworkStatus{
  IDLE,
  LOADING,
  SUCCESS,
  ERROR
}

Future<bool> isConnected() async{
  ConnectivityResult result = await Connectivity().checkConnectivity();
  return result == ConnectivityResult.mobile || result == ConnectivityResult.wifi;
}
