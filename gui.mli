open Graphics

type board
type piece

val draw_blank : int -> int -> int -> int -> unit

val draw_water : int -> int -> int -> int -> unit

val draw_piece : int -> int -> int -> int -> string -> Graphics.color -> unit

val draw_board : int -> int -> int -> board -> unit
