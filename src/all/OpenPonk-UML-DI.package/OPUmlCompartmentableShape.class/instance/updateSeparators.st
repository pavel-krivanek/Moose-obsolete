Roassal2 - updating
updateSeparators
	| x y |
	self separators select: [ :each | each view isNil ] thenDo: [ :each | view add: each ].
	x := self encompassingRectangle left.
	y := self labels
		ifEmpty: [ self encompassingRectangle top ]
		ifNotEmpty: [ :lbls | lbls last encompassingRectangle bottom ].
	self compartments
		do: [ :each | 
			each ownedElements
				ifEmpty: [ each rtElement shape path: 'L 0 0' ]
				ifNotEmpty: [ each rtElement shape path: 'L ' , self width asString , ' 0' ].
			each rtElement translateTo: x @ y.
			each rtElement update.
			each ownedElements
				ifNotEmpty: [ y := each ownedElements last encompassingRectangle bottom ] ].
	view signalUpdate