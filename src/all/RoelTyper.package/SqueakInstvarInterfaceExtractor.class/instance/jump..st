instruction decoding
jump: delta
	| currentPC |
	currentPC := self input pc.
	delta < 1 ifTrue: [^self].
	self saveStacks
		at: currentPC + delta
		put: stack copy.
	stack := OrderedCollection new.
	