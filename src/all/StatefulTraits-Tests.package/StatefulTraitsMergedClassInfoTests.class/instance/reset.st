reset
reset

	"self new reset"
	StatefulTraitsTestingMergedClass protocols 
		select: [ :each | each beginsWith: '_fromTrait_' ] 
		thenDo: [ :each | StatefulTraitsTestingMergedClass removeProtocol: each ].
		
	StatefulTraitsTestingMergedClass class protocols 
		select: [ :each | each beginsWith: '_fromTrait_' ] 
		thenDo: [ :each | StatefulTraitsTestingMergedClass class removeProtocol: each ].
			
	Object subclass: #StatefulTraitsTestingMergedClass
		slots: { #var1. #var2 }
		classVariables: {  }
		category: 'StatefulTraits-Tests'.
	
