util
brush: aGroup
	| others |
	aGroup ifEmpty: [ ^ self ].
	others := self domainElements.
	others ifNil: [ others := aGroup view elements ].
	others := others select: [ :e | (aGroup includes: e) not ].
	others do: [:e | RTBlink highlight: e 
		color: (self unhighlightColor rtValue: e) ].
	aGroup do: [:e | RTBlink highlight: e 
		color: (self highlightColor rtValue: e) ].