testing
testCutAndContract
	"self debug: #testCutAndContract"

	self
		assert: (MalKontractor new 
					wordsToBeRemoved: #('Seaside' 'Citezen') ; 
					removeWordsIn: 'Citezen-hello')
		equals: '-hello'.

	self
		assert: (MalKontractor new 
					wordsToBeRemoved: #('Seaside' 'Citezen') ; 
					removeWordsIn: 'Citezen-hello-Seaside')
		equals: '-hello-' 
