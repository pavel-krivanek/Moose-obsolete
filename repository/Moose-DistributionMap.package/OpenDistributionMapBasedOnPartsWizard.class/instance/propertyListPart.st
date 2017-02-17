initialize - property parts
propertyListPart
	^ propertyListPart
		ifNil: [ 
			propertyListPart := DropListPart new
				callback: [ :outputValue | outputValue ifNotNil: [ self propertyTextFieldPart textEntryContents: 'element ' , outputValue ] ];
				useLatePopulateContents: false;
				transformed: [ :aSelector | '[:element | element ' , aSelector asString , ' ]' ] yourself ]