accessing
aliases
	| aliases |
	aliases := self arguments select: [:each | each isAlias].
	self receiver isAlias ifTrue: [aliases add: self receiver].
	self return isAlias ifTrue: [aliases add: self return].
	^ aliases