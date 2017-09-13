Roassal2 - accessing
emphasis
	| emph |
	emphasis isBlock
		ifTrue: [ emphasis value: self modelElement value: self localStyle ].
	emph := Set new.
	self style fontBold
		ifTrue: [ emph add: TextEmphasis bold ].
	self style fontItalic
		ifTrue: [ emph add: TextEmphasis italic ].
	self style fontUnderline
		ifTrue: [ emph add: TextEmphasis underlined ].
	^ emph