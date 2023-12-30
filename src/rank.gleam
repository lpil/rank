import gleam/int

/// Returns the ordinal suffix for a number.
///
/// # Examples
///
/// ```gleam
/// suffix(1) // -> "st"
/// suffix(2) // -> "nd"
/// suffix(3) // -> "rd"
/// suffix(4) // -> "th"
/// ```
///
pub fn suffix(number: Int) -> String {
  let number = int.absolute_value(number)
  let hundred = number % 100
  case number % 10 {
    _ if hundred == 11 || hundred == 12 || hundred == 13 -> "th"
    1 -> "st"
    2 -> "nd"
    3 -> "rd"
    _ -> "th"
  }
}

/// Convert a number to its ordinal form.
///
/// # Examples
///
/// ```gleam
/// ordinalise(1) // -> "1st"
/// ordinalise(2) // -> "2nd"
/// ordinalise(3) // -> "3rd"
/// ordinalise(4) // -> "4th"
/// ```
///
pub fn ordinalise(number: Int) -> String {
  int.to_string(number) <> suffix(number)
}
