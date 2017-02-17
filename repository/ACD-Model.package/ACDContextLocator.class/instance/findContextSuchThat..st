private
findContextSuchThat: testBlock

	^ context 
		ifNil: [ nil ] 
		ifNotNil: [ context := context findContextSuchThat: testBlock ]
	