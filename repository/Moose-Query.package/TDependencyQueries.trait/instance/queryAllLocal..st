moosequery-queries-generic
queryAllLocal: anInOutSymbol 
	| coll direction m1  m3 |
	coll := OrderedCollection new.	
	"defines the prefix depending on the in out symbol"
	direction := self creatingDirectionSymbol: anInOutSymbol.	
	"create method names"
	m1 := direction , 'AssociationTypes'.
	m3 := 'create' , direction capitalized , 'QueryResultWith:'.
	"check that aFAMIXClassAssociation is well an incoming association type"
	(self perform: m1 asSymbol) do: [  :anAssociation |
		
			| tmp |
			tmp := self queryLocal:anInOutSymbol with: anAssociation.
			(tmp isNotNil and: [ tmp isNotEmpty ])
				ifTrue: [ coll add: tmp ] ].
	^ self perform: m3 asSymbol with: {coll} flattened