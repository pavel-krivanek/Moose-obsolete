initialize - elements parts
elementsListPart
	^ (DropListPart new)
		list: self possibleElementSelectors;
		defaultValue: 1;
		useLatePopulateContents: false;
		callback: [ :aFM3Property :thisPart| 
			self updatePopertySelectorPart: self propertyListPart withType: aFM3Property.
			thisPart wizardPane refresh
			];
		transformed: [:aFM3Property |
			 ('[:container | container ', aFM3Property name , ']')];
		format: [:aFM3Property | aFM3Property name  asString ,' ( ', aFM3Property type fullName asString,' )'];
		yourself