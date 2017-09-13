tests
testDescriptionAccessor
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions reader: reader labelPrefix: ''.
	(desc descriptionAccessor: #name) write: 'hello' to: nil.
	self assert: ((desc descriptionAccessor: #name) read: nil) equals: 'hello'