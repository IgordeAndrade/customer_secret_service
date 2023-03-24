
import 'package:mobx/mobx.dart';

part 'wallet_controller.g.dart';

// ignore: library_private_types_in_public_api
class WalletController = _WalletController with _$WalletController;

abstract class _WalletController with Store {

  @action 
  getWalletData(){
    
  }
  
}
