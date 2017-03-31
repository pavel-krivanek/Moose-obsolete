tests
testAsPluggableNodeFactory
	| factory pluggableFactory |

	factory := self factoryClass new.
	pluggableFactory := factory asPluggableNodeFactory.
	self assert: pluggableFactory class == self pluggableFactoryClass.
	factory class == self pluggableFactoryClass
		ifTrue: [self assert: pluggableFactory == factory]
		ifFalse: [self deny: pluggableFactory == factory].