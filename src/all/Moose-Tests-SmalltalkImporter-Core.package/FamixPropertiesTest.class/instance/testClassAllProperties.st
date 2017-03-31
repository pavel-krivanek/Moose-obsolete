testing
testClassAllProperties
	| class |
	class := self model entityNamed: LANNode mooseName.
	self deny: (class allDeclaredProperties select: [:each | each name = #modifiers]) isEmpty.