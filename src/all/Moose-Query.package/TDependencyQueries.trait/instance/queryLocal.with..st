moosequery-queries-generic
queryLocal: anInOutSymbol with: aFAMIXClassAssociation
	| coll direction m1 m2 m3 |
	coll := OrderedCollection new.
	"defines the prefix depending on the in out symbol"
	direction := self creatingDirectionSymbol: anInOutSymbol.
	"create method names"
	m1 := direction , 'AssociationTypes'.
	m2 := direction , 'MSEProperties'.
	m3 := 'create' , direction capitalized , 'QueryResultWith:'.
	"check that aFAMIXClassAssociation is well an incoming association type"
	((self perform: m1 asSymbol) includes: aFAMIXClassAssociation)
		ifTrue: [ | tmp |
			tmp := self perform: ((self perform: m2 asSymbol) detect: [ :p | p type implementingClass = aFAMIXClassAssociation ]) name.
			(tmp isNotNil and: [ tmp isNotEmpty ])
				ifTrue: [ coll add: tmp ] ].
	^ self perform: m3 asSymbol with: {coll} flattened