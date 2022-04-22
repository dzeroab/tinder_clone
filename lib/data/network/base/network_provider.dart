part of 'base.dart';

///
class NetworkProvider {
  NetworkProvider(this._connectivity);

  final Connectivity _connectivity;

  ///
  Future<bool> isConnected() {
    return _connectivity.checkConnectivity().then((value) => value != ConnectivityResult.none);
  }

  Future<bool> get isNoConnected => isConnected().then((value) => !value);

  Stream<bool> isConnectedStream() {
    return _connectivity.onConnectivityChanged.map((value) => value != ConnectivityResult.none);
  }
}
