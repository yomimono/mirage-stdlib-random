
include Mirage_types_lwt.RANDOM
  with type buffer = Cstruct.t

val initialize : unit -> unit
