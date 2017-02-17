passed
testAllClassInNamespaceAreCreated
	"self debug: #testAllClassInNamespaceAreCreated"
	
	self model  allClasses do: [:each | 	
		self deny: (each name endsWith: '_class')
	]