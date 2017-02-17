as yet unclassified
fromName: aNodeName
	(self canUnderstand: aNodeName asSymbol) ifTrue: [ ^ self new perform: aNodeName asSymbol ]
	ifFalse: [ ^ ASMetadata ]