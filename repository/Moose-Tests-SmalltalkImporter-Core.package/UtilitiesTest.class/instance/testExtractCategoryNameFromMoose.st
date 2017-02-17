tests
testExtractCategoryNameFromMoose
	"(self selector: #testExtractCategoryNameFromMoose) debug"

	self
		assert:
			(FAMIXNameResolver extractCategoryNameFromMoose: (FAMIXNameResolver browserCategoryToSourceAnchor: 'accessing'))
		equals: 'accessing'