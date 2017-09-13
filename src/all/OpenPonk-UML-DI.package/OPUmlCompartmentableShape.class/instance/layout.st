Roassal2 - updating
layout
	| diffW diffH |
	RTVerticalLineLayout new
		gapSize: 0;
		on: self figures.
	RTNestingBehavior new
		centerOn: self rtElement elements: self figures;
		resize: self rtElement for: self figures padding: 5.
	diffW := 140 - self rtElement width max: 0.
	diffH := 70 - self rtElement height max: 0.
	diffW > 0
		ifTrue: [ self rtElement width: 140 ].
	diffH > 0
		ifTrue: [ self rtElement height: 70 ].
	self figures translateBy: diffW @ diffH / -2.
	self labels
		do:
			[ :each | each translateTo: self rtElement position x @ each rtElement position y - (0 @ 2.5) ]