import 'package:bitrixmobile_client/src/auth.dart';
import 'package:http/http.dart';



class BitrixClient {
  late final Client httpClient;
  
  // features client
  late final AuthManagement authManagement;

  BitrixClient() {
    httpClient = Client();
    
    authManagement = AuthManagement(this);
  }


}