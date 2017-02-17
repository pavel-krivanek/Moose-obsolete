as yet unclassified
basicValue
	^ oneLinerBasicValue , ((newline , #space asParser) , oneLinerBasicValue ==> #last) star
	
	==> [:token | 
		((OrderedCollection with: token first inspect) addAll: token second; yourself) asArray ]