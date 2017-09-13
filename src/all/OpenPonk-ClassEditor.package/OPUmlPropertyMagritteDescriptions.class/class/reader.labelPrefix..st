instance creation
reader: aBlock labelPrefix: aLabelPrefix
	^ self new
		setReader: aBlock labelPrefix: aLabelPrefix;
		yourself