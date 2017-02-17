instance creation
openOnClassGroup: classGroup heightToSelect: heightSelector widthToSelect: widthSelector colorToSelect: colorSelector
	^ self 
		openOn: (classGroup -> (FAMIXClass new mooseDescriptionsOfNumberProperties collect: #implementingSelector))
		heightToSelect: heightSelector
		widthToSelect:  widthSelector
		colorToSelect: colorSelector