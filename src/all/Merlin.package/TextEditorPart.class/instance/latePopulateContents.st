accessing
latePopulateContents
	| default |
	default := self valueOf: self defaultValue.
	default ifNotNil: [ :aString | self textEditorContents: aString ]