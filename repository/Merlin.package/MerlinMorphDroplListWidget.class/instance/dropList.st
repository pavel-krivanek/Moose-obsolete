accessing - morph contents
dropList

	^ dropList ifNil: [dropList := self newDropListOn: self wizardPart list: #formatedList ]