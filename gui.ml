open Graphics
open Images
open Board

type board = Board.t
type piece = Board.piece

let draw_blank init_x init_y w h =
  Graphics.set_color white;
  Graphics.draw_rect init_x init_y w h;

let draw_water init_x init_y w h =
  Graphics.set_color blue;
  Graphics.draw_rect init_x init_y w h;

let draw_piece init_x init_y w h pce =
  let clr = if pce.user_team = true then Graphics.blue else Graphics.red in
  Graphics.set_color clr;
  Graphics.draw_rect init_x init_y w h;
  if pce.user_team = true then
    Graphics.draw_string (piece.piece_name);
  else 
    Graphics.draw_string ("Unknown");

let draw_board init_x init_y sep brd = 
  let wdt = sep in
  let ht = sep in
  Graphics.open_graph;
  let rec col_creator row cur_x cur_y =
    match row with
    | [| |] -> 
    | [| pc |]::tot -> 
      match pc with
      | None -> draw_blank cur_x cur_y sep sep
      | Some p -> draw_piece cur_x cur_y sep sep p
    col_creator tot (cur_x + sep) (cur_y + sep)
  in
  let rec row_creator x brd cur_x cur_y =
    match brd.(x) with
    | [| |] -> row_creator x+1 brd init_x (init_y + sep)
    | [| rw |]::tot -> col_creator rw cur_x cur_y
  in row_creator 0 brd init_x init_y

let delete_board =
  Graphics.clear_graph;