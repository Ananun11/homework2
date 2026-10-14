abstract class Payment {
  double calculateFee(double amount);
}

class CardPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 0.02;
  }
}

class CashPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 0;
  }
}

class CryptoPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 0.05;
  }
}

double calculateTotal(Payment payment, double amount) {
  double sum = amount + payment.calculateFee(amount);
  return sum;
}

void main() {
  print(calculateTotal(CardPayment(), 1000));
  print(calculateTotal(CashPayment(), 1000));
  print(calculateTotal(CryptoPayment(), 1000));
}