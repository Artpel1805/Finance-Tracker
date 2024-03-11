double calculateAmoutSave(
  DateTime startDate,
  double percent,
  double income,
) {
  final int dayDifference = DateTime.now().difference(startDate).inDays + 30;
  final double amountSaveEachMonth = income * percent / 100;
  return amountSaveEachMonth * dayDifference / 30;
}

double calculatePercentToGoal(
  DateTime startDate,
  double percent,
  double income,
  double price,
) {
  double amountSave = calculateAmoutSave(
    startDate,
    percent,
    income,
  );
  return amountSave * 100 / price;
}

int numberOfDayReeachGoal({
  startDate,
  percent,
  income,
  price,
}) {
  double amountSave = calculateAmoutSave(
    startDate,
    percent,
    income,
  );
  double amountLeft = price - amountSave;
  double numberOfMonths = amountLeft / (income * percent / 100);

  return (numberOfMonths * 30).toInt() - DateTime.now().day;
}
