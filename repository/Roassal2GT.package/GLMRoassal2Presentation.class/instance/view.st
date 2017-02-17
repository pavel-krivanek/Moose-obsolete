accessing
view
	^ view ifNil: [ view := self newViewBlock value ]