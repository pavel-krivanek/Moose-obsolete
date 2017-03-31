converting
derive: aBlock
	
	| derivate |
	derivate := MalSmartMapping new.
	derivate setParent: self.
	self do: [:index | (aBlock value: index) ifTrue: [derivate add: index]].
	^derivate