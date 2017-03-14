initialize - containers parts
containersListPart
	^ (DropListPart new)
		list: self possibleContainerTypes;
		defaultValue: 1;
		useLatePopulateContents: false;
		format: [:aFM3Property | aFM3Property type name, ' ( using ', aFM3Property name, ' )' ];
		transformed: [:aFM3Property | ('[:element | element ' , aFM3Property name , ']')]
		yourself