moosequery-queries-generic
queryAll: anInOutSymbol 
	| coll direction m |
	coll := OrderedCollection new.	
	"defines the prefix depending on the in out symbol"
	direction := self creatingDirectionSymbol: anInOutSymbol.	
	"create method names"
	
	m := 'create' , direction capitalized , 'QueryResultWith:'.
	"check that aFAMIXClassAssociation is well an incoming association type"
	FAMIXAssociation withAllSubclassesDo: [  :anAssociation |
		
			| tmp |
			tmp := self query:anInOutSymbol with: anAssociation.
			(tmp isNotNil and: [ tmp isNotEmpty ])
				ifTrue: [ coll add: tmp ] ].
	^ self perform: m asSymbol with: {coll} flattened