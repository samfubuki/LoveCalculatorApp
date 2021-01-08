class Brain {
  String getMessage(int lovePercent) {
    if (lovePercent >= 70) {
      return "Great! Made for Each other";
    } else if (lovePercent >= 40 && lovePercent <= 69) {
      return "Good! You should work more on your relationship";
    } else {
      return "Okay! That's not a very great love score";
    }
  }
}
