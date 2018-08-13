as yet unclassified
behaviorNamed: aSymbol ifAbsent: aBlock

	| found siblingName | 
	
	found := self behaviorNamedExactlyAs: aSymbol ifAbsent: [nil].
	found ifNotNil: [ ^ found ].
	
	(aSymbol endsWith: ' class') 
		ifTrue: [ 
			siblingName := (aSymbol withoutSuffix: ' class').
			found := self behaviorNamedExactlyAs: siblingName ifAbsent: [nil].
			found ifNotNil: [ 
				found isClass ifTrue: [ ^ found metaclass ]]].

	(aSymbol endsWith: ' classTrait') 
		ifTrue: [ 
			siblingName := (aSymbol withoutSuffix: ' classTrait').
			found := self behaviorNamedExactlyAs: siblingName ifAbsent: [nil].
			found ifNotNil: [ 
				found isTrait ifTrue: [ ^ found classTrait ]]].
		
	siblingName := (aSymbol, ' class').
	found := self behaviorNamedExactlyAs: siblingName ifAbsent: [nil].
	found ifNotNil: [ ^ found baseClass ].		

	siblingName := (aSymbol, ' classTrait').
	found := self behaviorNamedExactlyAs: siblingName ifAbsent: [nil].
	found ifNotNil: [ ^ found baseTrait ].		
					
	^ aBlock value.