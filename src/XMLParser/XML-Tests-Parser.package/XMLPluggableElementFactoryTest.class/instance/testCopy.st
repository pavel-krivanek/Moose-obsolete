tests
testCopy
	| factory copy |

	factory := self newFactoryWithClasses.
	factory handleElement: 'user' withClass: XMLFUserElement.
	copy := factory copy.
	self
		deny: copy == factory;
		deny: copy elementClassMapper == factory elementClassMapper.