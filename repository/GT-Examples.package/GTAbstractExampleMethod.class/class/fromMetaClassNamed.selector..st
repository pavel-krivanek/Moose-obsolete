instance creation
fromMetaClassNamed: aString selector: aSelector
	^ self new 
		methodClass: nil;
		methodClassName: aString asString;
		meta: true;
		selector: aSelector;
		yourself