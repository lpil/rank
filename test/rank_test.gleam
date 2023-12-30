import gleeunit
import gleam/io
import gleam/int
import gleam/list
import gleeunit/should
import rank

pub fn main() {
  gleeunit.main()
}

const suffix_cases = [
  #(-30, "th"),
  #(-29, "th"),
  #(-28, "th"),
  #(-27, "th"),
  #(-26, "th"),
  #(-25, "th"),
  #(-24, "th"),
  #(-23, "rd"),
  #(-22, "nd"),
  #(-21, "st"),
  #(-20, "th"),
  #(-19, "th"),
  #(-18, "th"),
  #(-17, "th"),
  #(-16, "th"),
  #(-15, "th"),
  #(-14, "th"),
  #(-13, "th"),
  #(-12, "th"),
  #(-11, "th"),
  #(-10, "th"),
  #(-9, "th"),
  #(-8, "th"),
  #(-7, "th"),
  #(-6, "th"),
  #(-5, "th"),
  #(-4, "th"),
  #(-3, "rd"),
  #(-2, "nd"),
  #(-1, "st"),
  #(0, "th"),
  #(1, "st"),
  #(2, "nd"),
  #(3, "rd"),
  #(4, "th"),
  #(5, "th"),
  #(6, "th"),
  #(7, "th"),
  #(8, "th"),
  #(9, "th"),
  #(10, "th"),
  #(11, "th"),
  #(12, "th"),
  #(13, "th"),
  #(14, "th"),
  #(15, "th"),
  #(16, "th"),
  #(17, "th"),
  #(18, "th"),
  #(19, "th"),
  #(20, "th"),
  #(21, "st"),
  #(22, "nd"),
  #(23, "rd"),
  #(24, "th"),
  #(25, "th"),
  #(26, "th"),
  #(27, "th"),
  #(28, "th"),
  #(29, "th"),
  #(30, "th"),
  #(31, "st"),
  #(32, "nd"),
  #(33, "rd"),
  #(34, "th"),
  #(35, "th"),
  #(36, "th"),
  #(37, "th"),
  #(38, "th"),
  #(39, "th"),
  #(40, "th"),
  #(10_000, "th"),
  #(10_001, "st"),
  #(10_002, "nd"),
  #(10_003, "rd"),
  #(10_004, "th"),
  #(10_005, "th"),
  #(10_006, "th"),
  #(10_007, "th"),
  #(10_008, "th"),
  #(10_009, "th"),
  #(10_010, "th"),
  #(10_011, "th"),
  #(10_012, "th"),
  #(10_013, "th"),
  #(10_014, "th"),
  #(10_015, "th"),
  #(10_016, "th"),
  #(10_017, "th"),
  #(10_018, "th"),
  #(10_019, "th"),
  #(10_020, "th"),
  #(10_021, "st"),
]

pub fn suffix_test() {
  use #(n, s) <- list.each(suffix_cases)
  io.println(int.to_string(n) <> ": " <> s)
  n
  |> rank.suffix
  |> should.equal(s)
}

pub fn ordinalise_test() {
  use #(n, s) <- list.each(suffix_cases)
  io.println(int.to_string(n) <> ": " <> s)
  n
  |> rank.ordinalise
  |> should.equal(int.to_string(n) <> s)
}
