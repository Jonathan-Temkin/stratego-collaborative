type location = (int * int)
type team = Red | Blue
type name = General | Spy | Flag | Bomb | Scout | Miner | Sergeant
          | Lieutenant | Captain | Major | Colonel | Marshall 
type piece = {
  piece_name : name;
  rank : int;
  mutable seen : bool;
  user_team : bool
}
(*[| [|piece; piece; piece..|]; [|piece; piece; piece..|]..|]
  where t.(x).(y) indicates t.(row)(column) *)
type t = ((piece option) array) array

let compare (p1 : piece) (p2 : piece) : int =
  failwith "Unimplemented"

let add_empty_to_board (loc : location) (board : t) : unit = 
  match loc with 
  | (x, y) -> board.(x).(y) <- None

(*The Stratego Board is a 10 x 10 board such that (0,0) is the bottom left 
  corner and (9,9) is the top right corner*)
let create_empty_board : t =
  failwith "Unimplemented"

let add_to_board (p : piece) (loc : location) (board : t) : unit = 
  match loc with 
  | (x, y) -> (board.(x).(y) <- Some p)



let get_piece (loc : location) (board : t) : piece = 
  failwith "Unimplemented"

let create_user_board (setup : (piece * location) list) : t = 
  failwith "Unimplemented"

let create_random_board : t = 
  failwith "Unimplemented"

let get_valid_moves (board : t) (loc : location) : location list = 
  failwith "unimplemented"

let move_piece (board : t) (current_loc : location) (new_loc : location) : t = 
  failwith "Unimplemented"

let remove_piece (board : t) (loc : location) : t = 
  failwith "Unimplemented"
