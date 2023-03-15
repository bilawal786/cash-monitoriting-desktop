extension Range on num {
  bool isBetween(num from, num to) {
    return from <= this && this <= to;
  }
}



extension StringExtension on String {
  String capitalize() {
    try {
      return trim()
          .split(' ')
          .map((e) => e.trim()._capitalizeFirst())
          .join(' ');
    } catch (e) {
      return this;
    }
  }

  String _capitalizeFirst() =>
      this[0].toUpperCase() + substring(1).toLowerCase();
}