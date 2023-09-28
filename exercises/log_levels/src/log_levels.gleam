import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[WARNING]:" <> rest ->
      rest
      |> string.trim
    "[INFO]:" <> rest ->
      rest
      |> string.trim
    "[ERROR]:" <> rest ->
      rest
      |> string.trim
  }
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[WARNING]:" <> _ -> "warning"
    "[INFO]:" <> _ -> "info"
    "[ERROR]:" <> _ -> "error"
  }
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
