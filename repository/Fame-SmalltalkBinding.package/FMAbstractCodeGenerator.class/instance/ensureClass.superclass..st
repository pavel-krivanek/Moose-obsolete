compiling
ensureClass: fameClass superclass: rbSuperclass
	| rbClass0 className |
	className := self classNameFor: fameClass.
	rbClass0 := model classNamed: className.
	rbClass0 isNil ifTrue:
			[ self compileClass: fameClass superclass: rbSuperclass.
			rbClass0 := model classNamed: className ].
	rbClass0 notNil should beTrue.
	^ rbClass0