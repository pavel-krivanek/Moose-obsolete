accessing
contents
	| oldPosition contents |

	oldPosition := self position.
	self reset.
	contents := self upToEnd.
	self position: oldPosition.
	^ contents.