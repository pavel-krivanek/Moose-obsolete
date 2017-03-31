private
elementAtReceiverScope: dep
	"returns scope of opposite element matching the scope of the receiver.
	For example, would return the class of an invoked method if query is called on a class."

	^ (self opposite: dep) perform: self receiver yourScope