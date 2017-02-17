public
sameWidth
	self ifNoFixedElementThen: [ self useWidestElement ].
	elements do: [ :e | e width: self fixedElement width ]