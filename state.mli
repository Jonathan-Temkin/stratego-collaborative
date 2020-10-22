open Board

type gameboard

type direction 

val create_full_board : int -> int -> int -> int -> t


(** [move] is the state of the gameboard after the player moves a piece [p] to
    a valid location [loc]. If there is an enemy piece already at location 
    [loc], then [p] will automatically attack it. *)
val move : piece -> location -> t

(** The team whose turn it is currently *)
val player_current_turn : bool

val player_piece_list : piece list