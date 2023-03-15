import 'package:customer_secret_service/global/domain/value_objects.dart';

import '../../schedule/domain/task.dart';

class Wallet {
  Wallet({
    required this.uid,
    required this.balance,
    required this.availableForWithdrawal,
    required this.lastPayment,
    required this.paymentHistory,
  });

  final UniqueID uid;
  final double balance;
  final double availableForWithdrawal;
  final double lastPayment;
  final List<Task>? paymentHistory;

  @override
  String toString() {
    return 'Wallet(uid: $uid, balance: $balance, availableForWithdrawal: $availableForWithdrawal, lastPayment: $lastPayment, paymentHistory: $paymentHistory)';
  }

  factory Wallet.fromJson(Map<String, dynamic> json) {
    return Wallet(
      uid: UniqueID.fromSafeString(json['uid']),
      balance: json['balance'],
      availableForWithdrawal: json['availableForWithdrawal'],
      lastPayment: json['lastPayment'],
      paymentHistory: json['paymentHistory'] != null
          ? [
              for (var task in json['paymentHistory'])
                Task.fromJson(json['paymentHistory'])
            ]
          : null,
    );
  }

  Map<String, dynamic> toJson(Wallet wallet) {
    return {
      'uid': wallet.uid.toString(),
      'balance': wallet.balance,
      'availableForWithdrawal': wallet.availableForWithdrawal,
      'lastPayment': wallet.lastPayment,
      'paymentHistory': wallet.paymentHistory != null
          ? [for (var task in wallet.paymentHistory!) task.toJson()]
          : null,
    };
  }

  Wallet copyWith({
    UniqueID? uid,
    double? balance,
    double? availableForWithdrawal,
    double? lastPayment,
    List<Task>? paymentHistory,
  }) {
    return Wallet(
      uid: uid ?? this.uid,
      balance: balance ?? this.balance,
      availableForWithdrawal:
          availableForWithdrawal ?? this.availableForWithdrawal,
      lastPayment: lastPayment ?? this.lastPayment,
      paymentHistory: paymentHistory ?? this.paymentHistory,
    );
  }
}
