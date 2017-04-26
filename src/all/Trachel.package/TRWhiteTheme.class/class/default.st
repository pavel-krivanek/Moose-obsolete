accessing
default
	"Return the default theme"
	default ifNil: [ default := self new ].
	^ default