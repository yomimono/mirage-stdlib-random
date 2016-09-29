#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  let lint_deps_excluding = Some ["mirage-types-lwt" ; "mirage-types"] in
  let opams = [ Pkg.opam_file "opam" ~lint_deps_excluding ] in
  Pkg.describe ~opams "mirage-stdlib-random" @@ fun _ ->
  Ok [ Pkg.mllib "src/stdlibrandom.mllib" ]
