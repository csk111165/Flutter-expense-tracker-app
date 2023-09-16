# expense_tracker

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Notes
* debugShowCheckedModeBanner: false, in the MaterialApp() // this will hide the debug banner watermark
* The provided Flutter code defines a `_presentDatePicker` function that opens a date picker dialog when called. Here's a breakdown of what it does:

1. `final now = DateTime.now();`: This line creates a `DateTime` object called `now`, representing the current date and time.

2. `final firstDate = DateTime(now.year - 1, now.month, now.day);`: This line creates another `DateTime` object called `firstDate`. It sets `firstDate` to one year before the current date. This is used as the minimum selectable date in the date picker dialog. So, it ensures that the user cannot select a date earlier than one year ago.

3. `showDatePicker(...)`: This function is part of Flutter's `showDatePicker` utility for displaying a date picker dialog. It takes several arguments:
   - `context`: The `BuildContext` from which to show the dialog.
   - `initialDate`: The initial date to display when the date picker opens. In this case, it's set to the current date (`now`).
   - `firstDate`: The earliest date that the user can select. In this case, it's set to `firstDate`, which is one year before the current date.
   - `lastDate`: The latest date that the user can select. In this case, it's set to the current date (`now`).

When you call `_presentDatePicker()`, it opens the date picker dialog that allows the user to pick a date within the specified range, which is between one year ago and the current date. The selected date can then be used in your Flutter app as needed.
---

