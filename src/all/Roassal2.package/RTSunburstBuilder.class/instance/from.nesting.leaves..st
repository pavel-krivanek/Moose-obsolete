building
from: objects nesting: block1 leaves: block2
	| r |
	r := super from: objects nesting: block1 leaves: block2.
	r do: [ :e | e attributes at: #parent put: nil].
	^ r