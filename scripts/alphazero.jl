using Revise
using AlphaZero

include("using_game.jl")
@using_default_game

session = Session(
  Game, Network, params, netparams,
  dir=SESSION_DIR, autosave=true, validation=validation)

resume!(session)

explore(session)
