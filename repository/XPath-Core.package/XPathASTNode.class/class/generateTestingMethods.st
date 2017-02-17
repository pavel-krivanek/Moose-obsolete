private
generateTestingMethods
	"self generateTestingMethods"

	self allSubclassesDo: [:each | | selectorString |
		selectorString := 'is', each nameWithoutPrefixAndSuffix.
		each
			compile: selectorString, '
	^ true'
			classified: #testing.
		self
			compile: selectorString, '
	^ false'
			classified: #testing]