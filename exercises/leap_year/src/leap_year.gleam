import gleam/result
import gleam/int

// on every year that is evenly divisible by 4
// except every year that is evenly divisible by 100 -> Err
// unless the year is also evenly divisible by 400
pub fn is_leap_year(year: Int) -> Bool {
  let by_4 =
    int.modulo(year, 4)
    |> result.unwrap(1)
  let by_100 =
    int.modulo(year, 100)
    |> result.unwrap(1)
  let by_400 =
    int.modulo(year, 400)
    |> result.unwrap(1)

  case by_4, by_100, by_400 {
    0, 0, 0 -> True
    0, 0, _ -> False
    0, _, _ -> True
    _, _, _ -> False
  }
}
