public
sameSize
	self ifNoFixedElementThen: [ self useBiggestElement ].
	elements do: [ :e | e extent: self fixedElement extent ]