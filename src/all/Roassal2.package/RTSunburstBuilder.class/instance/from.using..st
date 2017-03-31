building
from: objects using: ablock
	| r |
	r := super from: objects using: ablock.
	r do: [ :e | e attributes at: #parent put: nil].
	^ r