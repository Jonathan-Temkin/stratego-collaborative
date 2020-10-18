open OUnit2

let board_tests = [

]

let ai_tests = [

]

let gui_tests = [

]

let suite =
  "test suite for A2"  >::: List.flatten [
    board_tests;
    ai_tests;
    gui_tests;
  ]