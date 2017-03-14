public
sameHeight
	self ifNoFixedElementThen: [ self useHighestElement ].
	elements do: [ :e | e height: self fixedElement height ]