tests
testStringAnnotation
	| meta prop desc |
	meta := FM3MetaDescription new.
	prop := MTLAnnotationDescription new
		name: #something;
		type: FM3 string;
		yourself.
	meta attributes add: prop.
	desc := meta asMagritteDescription.
	self assert: desc isContainer.
	self assert: desc size equals: 1.
	self assert: (desc children first isKindOf: MAStringDescription).
	self assert: (desc children first accessor isKindOf: MTLFamePropertyAccessor).
	self assert: desc children first isReadonly not