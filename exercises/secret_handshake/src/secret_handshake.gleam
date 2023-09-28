import gleam/result
import gleam/int
import gleam/string
import gleam/list

pub type Command {
  Wink
  DoubleBlink
  CloseYourEyes
  Jump
}

pub fn commands(encoded_message: Int) -> List(Command) {
  let bin =
    encoded_message
    |> int.to_base2
    |> string.split("")
    |> list.reverse
  let bin_len = list.range(0, list.length(bin))

  list.map2(bin, bin_len, fn(a, b) {

   })



  todo
}
