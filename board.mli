(* A module of type [Board] represents a stratego board 
*)
type location 
type team
type name 
type piece 
type t 

(* Compares the ranks of two pieces *)
val compare : piece -> piece -> int

(* Instantiates a new empty stratego board *)
val create_empty_board : t

(* Adds a new piece to a given position on the board *)
val add_to_board : piece -> location -> t -> unit

(* Gets the piece located at a particular position on the board *)
val get_piece : location -> t -> piece

(* Instantiates a new stratego board using a user's input*)
val create_user_board : (piece * location) list -> t

(* Instantiates a new stratego board using random input*)
val create_random_board : t

(* Returns all of the valid moves for a given game piece *)
val get_valid_moves : t -> location -> location list

(* Moves a game piece to a given new location and returns the new game board 
   Requires: current_loc is a valid piece that can legally move to new_loc*)
val move_piece : t -> location -> location -> t

(* Removes a game piece from the board and returns the updated board *)
val remove_piece : t -> location -> t 
