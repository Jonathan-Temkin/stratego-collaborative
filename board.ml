type location = (int * int)
type team = Red | Blue
type name = General | Spy | Flag | Bomb | Scout | Miner | Sergeant
          | Lieutenant | Captain | Major | Colonel | Marshall 
type piece = {
  piece_name : name;
  rank : int;
  mutable seen : bool;
  user_team : bool;
  color : team
}
type t = (location * (piece option)) list

let compare (p1 : piece) (p2 : piece) : int =
  failwith "Unimplmented"

let create_empty_board : t =
  failwith "Unimplemented"

let add_to_board (p : piece) (loc : location) (board : t) : t = 
  failwith "Unimplemented"

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
