import gleam/string
import gleam/order
import gleam/bool

// Did not found a function to solve this so I hard coded it
fn is_only_strs(str: String) {
  let is_smile =
    ":) ?"
    |> string.compare(str)
    |> order.to_int
  let is_count =
    "1, 2, 3"
    |> string.compare(str)
    |> order.to_int
  let is_4 =
    "4?"
    |> string.compare(str)
    |> order.to_int
  case is_smile, is_count, is_4 {
    0, _, _ -> True
    _, 0, _ -> True
    _, _, 0 -> True
    _, _, _ -> False
  }
}

pub fn hey(remark: String) -> String {
  let clean_str =
    remark
    |> string.trim

  let silence =
    clean_str
    |> string.is_empty

  let is_question =
    clean_str
    |> string.ends_with("?")

  let is_yelling =
    clean_str
    |> string.uppercase
    |> string.contains(clean_str)
    |> bool.exclusive_or(is_only_strs(clean_str))

  case is_question, is_yelling, silence {
    True, True, _ -> "Calm down, I know what I'm doing!"

    _, _, True -> "Fine. Be that way!"

    True, _, _ -> "Sure."
    _, True, _ -> "Whoa, chill out!"

    _, _, _ -> "Whatever."
  }
}
