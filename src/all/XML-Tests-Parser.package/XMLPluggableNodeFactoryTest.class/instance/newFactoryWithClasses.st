instance creation
newFactoryWithClasses
	^ self newFactory
		documentClass: self documentClass;
		elementClass: self elementClass;
		stringNodeClass: self stringNodeClass;
		cdataClass: self cdataClass;
		commentClass: self commentClass;
		piClass: self piClass