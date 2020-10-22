open OUnit2
open Graphics

let board_tests = [

]

let ai_tests = [

]

let x = 
  let () = (Graphics.open_graph "") in 
  1

(** [gui_test name f output] constructs an OUnit
    test named [name] that asserts the quality of [output]
    with [f t] where [t] is the adventure object of type t *)
let gui_test name output = 
  name >:: (fun _ -> 
      assert_equal output (x))

let gui_tests = [
  gui_test "test" 1
]

let suite =
  "test suite for A2"  >::: List.flatten [
    board_tests;
    ai_tests;
    gui_tests;
  ]