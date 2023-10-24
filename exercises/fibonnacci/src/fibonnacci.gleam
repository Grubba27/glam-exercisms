import gleam/io
import gleam/int

pub fn fib(n: Int) -> Int {
  case n {
    0 -> 0
    1 -> 1
    n -> fib(n - 1) + fib(n - 2)
  }
}

pub fn main() {
  fib(6) 
  |> int.to_string
  |> io.println
}
