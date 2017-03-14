tests
testMultivaluedString
	| meta prop desc |
	meta := FM3MetaDescription new.
	prop := FM3PropertyDescription new.
	prop type: FM3 string.
	prop isMultivalued: true.
	meta attributes add: prop.
	desc := meta asMagritteDescription.
	self assert: desc isContainer.
	self assert: desc size equals: 1.
	self assert: (desc children first isKindOf: MAStringDescription).
	self assert: desc children first isReadonly.
	self assert: (desc children first accessor isKindOf: MTLFamePropertyAccessor)