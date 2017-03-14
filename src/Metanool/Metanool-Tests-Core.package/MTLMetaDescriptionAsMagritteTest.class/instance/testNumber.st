tests
testNumber
	| meta prop desc |
	meta := FM3MetaDescription new.
	prop := FM3PropertyDescription new.
	prop type: FM3 number.
	meta attributes add: prop.
	desc := meta asMagritteDescription.
	self assert: desc isContainer.
	self assert: desc size equals: 1.
	self assert: (desc children first isKindOf: MANumberDescription).
	self assert: (desc children first accessor isKindOf: MTLFamePropertyAccessor).
	self assert: desc children first isReadonly not