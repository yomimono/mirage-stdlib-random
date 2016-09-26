#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  Pkg.describe "stdlibrandom" @@ fun _ ->
  Ok [ Pkg.mllib "src/stdlibrandom.mllib" ]
