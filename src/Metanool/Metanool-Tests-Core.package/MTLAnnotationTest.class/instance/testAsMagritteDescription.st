tests
testAsMagritteDescription

	| annotation |
	annotation := MTLAnnotationDescription new name: #something; type: FM3 string; yourself.
	self assert: (annotation asMagritteDescription accessor isKindOf: MTLFamePropertyAccessor)