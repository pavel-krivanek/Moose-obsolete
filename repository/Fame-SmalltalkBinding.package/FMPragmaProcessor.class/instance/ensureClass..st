private
ensureClass: var
	var isBehavior
		ifTrue: [ ^ classDict at: var ].
	var isSymbol
		ifTrue: [ ^ classDict
				at: (self class environment at: var)
				ifAbsent: [ metaDict at: var asString ] ].
	var isString
		ifTrue: [ ^ metaDict at: var ].
	self assert: false