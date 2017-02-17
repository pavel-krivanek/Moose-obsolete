accessing - morph contents
tabGroup

	^ tabGroup ifNil: [
		tabGroup := self newTabGroupBoxFor: (self wizardPart titlesAndParts collect: [:anAssoc | 
			anAssoc key -> (self subpartsMerlinWidgets  add: anAssoc value merlinRendering) morphContents 
			])
		].