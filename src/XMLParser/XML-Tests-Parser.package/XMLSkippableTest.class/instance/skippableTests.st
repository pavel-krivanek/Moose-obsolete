accessing
skippableTests
	"make it a set for faster lookup"
	^ skippableTests ifNil: [skippableTests := self class skippableTests asSet]