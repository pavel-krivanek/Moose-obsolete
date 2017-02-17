accessing-dom
previousSibling
	"Answer the previous sibling of the receiver or nil."

	| index children |
	self parentNode isNil ifTrue: [ ^ nil ].
	children := self parentNode childNodes.
	index := children identityIndexOf: self ifAbsent: [ ^ nil ].
	^ children at: index - 1 ifAbsent: [ nil ]