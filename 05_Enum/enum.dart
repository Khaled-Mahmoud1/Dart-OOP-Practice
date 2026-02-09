enum Days { Saturday, Sunday, Monday, Tuesday, Wednesday, Thursday, Friday }

void main() {
  var today = Days.Monday;
  print(today); // Output: Days.Monday

  // Accessing the index of an enum value
  print(Days.Tuesday.index); // Output: 1

  // Using a switch case with enums
  switch (today) {
    case Days.Monday:
      print("It's Monday!");
      break;
    case Days.Tuesday:
      print("It's Tuesday!");
      break;
    case Days.Wednesday:
      print("It's Wednesday!");
      break;
    case Days.Thursday:
      print("It's Thursday!");
      break;
    case Days.Friday:
      print("It's Friday!");
      break;
    case Days.Saturday:
      print("It's Saturday!");
      break;
    case Days.Sunday:
      print("It's Sunday!");
      break;
  }
}
