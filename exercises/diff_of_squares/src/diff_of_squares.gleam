import gleam/iterator
import gleam/result
import gleam/int
import gleam/float

pub fn square_of_sum(n: Int) {
  iterator.range(from: 0, to: n)
  |> iterator.to_list
  |> int.sum
  |> int.power(2.0)
  |> result.unwrap(0.0)
  |> float.round
}

pub fn sum_of_squares(n: Int) -> Int {
  iterator.range(from: 0, to: n)
  |> iterator.reduce(fn(acc, x) {
    int.power(x, 2.0)
    |> result.unwrap(0.0)
    |> float.round
    |> int.add(acc)
  })
  |> result.unwrap(0)
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
