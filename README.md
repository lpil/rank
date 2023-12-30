# rank

Ordinals for numbers, e.g. 1st, 2nd, 3rd

[![Package Version](https://img.shields.io/hexpm/v/rank)](https://hex.pm/packages/rank)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/rank/)

```sh
gleam add rank
```
```gleam
import rank

pub fn main() {
  rank.ordinalise(1) // "1st"
  rank.ordinalise(2) // "2nd"
  rank.ordinalise(3) // "3rd"
  rank.suffix(1) // "st"
  rank.suffix(2) // "nd"
  rank.suffix(3) // "rd"
}
```

Documentation can be found at <https://hexdocs.pm/rank>.

Thanks to [Andrew Hao's Ordinal](https://github.com/andrewhao/ordinal) which
was the inspiration for this library.
