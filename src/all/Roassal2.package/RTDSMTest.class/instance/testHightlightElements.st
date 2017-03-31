tests
testHightlightElements
	| b elements |
	b := RTDSM new.
	b objects: (1 to: 3).
	b dependency: [ :aValue | aValue + 1 ].
	b shape box color: Color blue.
	b build.
	b highlightElements.
	elements := b view elements select: [ :e| e trachelShape class = TRBoxShape ].
	self assert: elements first color equals: (Color blue alpha: b transparencyWhenHighlighted).
	b unhighlightElements.
	self assert: elements first color equals: (Color blue alpha: b transparencyWhenNonHighlighted).
		
	