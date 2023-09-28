import gleam/int
import gleam/result

pub fn convert(number: Int) -> String {
  let by_3 =
    int.modulo(number, 3)
    |> result.try(fn(x) {
      case x {
        0 -> Ok("Pling")
        _ -> Ok("")
      }
    })
    |> result.unwrap("")

  let by_5 =
    int.modulo(number, 5)
    |> result.try(fn(x) {
      case x {
        0 -> Ok("Plang")
        _ -> Ok("")
      }
    })
    |> result.unwrap("")

  let by_7 =
    int.modulo(number, 7)
    |> result.try(fn(x) {
      case x {
        0 -> Ok("Plong")
        _ -> Ok("")
      }
    })
    |> result.unwrap("")

  let r = by_3 <> by_5 <> by_7

  case r {
    "" -> int.to_string(number)
    _ -> r
  }
}
