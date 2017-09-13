*OpenPonk-ClassEditor
notationFor: aValue
	(aValue isNil or: [ aValue isEmpty ])
		ifTrue: [ ^ '' ].
	aValue = self public
		ifTrue: [ ^ '+' ].
	aValue = self private
		ifTrue: [ ^ '-' ].
	aValue = self protected
		ifTrue: [ ^ '#' ].
	^ '~'