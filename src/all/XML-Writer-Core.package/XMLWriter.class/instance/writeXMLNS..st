private
writeXMLNS: aPrefix
	self writeStringName:
		(aPrefix isEmpty
			ifTrue: ['xmlns']
			ifFalse: ['xmlns:', aPrefix])