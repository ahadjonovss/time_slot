class BankingCardModel {
  BankingCardModel({
    required this.cardNumber,
    this.balance = 0,
    this.purchaseInProgress = 0,
    this.referrals = 0,
    this.allPurchased = 0,
  });

  // Create a BankingCardModel object from a JSON Map
  factory BankingCardModel.fromJson(Map<String, dynamic> json) =>
      BankingCardModel(
        cardNumber: json['cardNumber'] ?? 'DefaultCardNumber',
        balance: json['balance'] ?? 0.0,
        purchaseInProgress: json['purchaseInProgress'] ?? 0.0,
        referrals: json['referrals'] ?? 0,
        allPurchased: json['allPurchased'] ?? 0.0,
      );
  final String cardNumber;
  final num balance;
  final num purchaseInProgress;
  final int referrals;
  final num allPurchased;

  // Convert a BankingCardModel object to a JSON Map
  Map<String, dynamic> toJson() => {
        'cardNumber': cardNumber,
        'balance': balance,
        'purchaseInProgress': purchaseInProgress,
        'referrals': referrals,
        'allPurchased': allPurchased,
      };
}