instance creation
fromSymbol: aSymbol
	"I return the right strategy from a Symbol representing a direction"

	^ self allSubclasses detect: [ :each | each determinatingSymbol = aSymbol ] ifNone: [ self error: 'The symbol passed to the query should be either #in or #out. Here we got ' , aSymbol asString ]