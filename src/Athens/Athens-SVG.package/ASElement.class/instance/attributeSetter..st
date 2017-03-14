operations
attributeSetter: aString
	"fill-opacity   =>>  fill_opacity:
	x =>> x:"
	| sel |
	sel := aString collect: [ :c | ('-:' includes: c) ifTrue: [ $_] ifFalse: [ c ]].
	^ (sel copyWith: $:) asSymbol 