accessing
label
	text ifNil: [ 
		calculation ifNil: [ ^'' ] 
		ifNotNil: [^calculation value asString]]
	ifNotNil: [ ^text ]