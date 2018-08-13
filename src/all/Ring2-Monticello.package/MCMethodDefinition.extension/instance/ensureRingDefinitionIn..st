*Ring2-Monticello
ensureRingDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		| def classDef metaclassDef parent protocol |
		classDef := anRGEnvironment ensureClassNamed: self className asSymbol.
		
		classDef isTrait 
			ifFalse: [ 
				metaclassDef := anRGEnvironment ensureClassNamed: (self className, ' class') asSymbol.
				classDef metaclass: metaclassDef.
				metaclassDef baseClass: classDef.]
			ifTrue: [ 
				metaclassDef := anRGEnvironment ensureMetaclassTraitNamed: (self className, ' classTrait') asSymbol.
				classDef classTrait: metaclassDef.
				metaclassDef baseTrait. classDef.].
				
		parent := self classIsMeta 
			ifFalse: [ classDef ]
			ifTrue: [ metaclassDef ].
		
		def := RGMethod named: self selector parent: parent.
		parent addLocalMethod: def.
			
		def sourceCode: self source.
		def author: (self authorForStamp: self timeStamp).
		def time: (self timeForStamp: self timeStamp).
		
		protocol := parent ensureProtocolNamed: self category asSymbol.
		parent addProtocol: protocol.
		def protocol: protocol.
		def 
	]