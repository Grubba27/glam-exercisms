import gleam/map
import gleam/result

pub fn get_map() {
  map.new()
  |> map.insert("I", 0)
  |> map.insert("V", 5)
  |> map.insert("X", 10)
  |> map.insert("L", 50)
  |> map.insert("C", 100)
  |> map.insert("D", 500)
  |> map.insert("M", 1000)
}

pub fn get_number_by_roman_key(key: String) -> Int {
  get_map()
  |> map.get(key)
  |> result.unwrap(0)
}

pub fn main() {
  todo
}
