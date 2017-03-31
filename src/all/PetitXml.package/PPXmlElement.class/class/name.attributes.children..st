instance creation
name: anXmlName attributes: anAttributeArray children: aChildrenArray
	^ self basicNew
		setName: anXmlName;
		setAttributes: anAttributeArray;
		setChildren: aChildrenArray;
		yourself