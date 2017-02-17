accessing
initializeDefault
	| default |
	default := self valueOf: self defaultValue.
	default ifNotNil: [ :aString | self textEntryContents: aString ]