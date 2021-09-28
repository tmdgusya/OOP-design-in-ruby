require './trip'
require './airplane_move_strategy'
require './train_move_strategy'

trip = Trip.new
airplane_startegy = AirplaneMoveStartegy.new
train_move_startegy = TrainMoveStartegy.new

trip.go_trip(train_move_startegy)