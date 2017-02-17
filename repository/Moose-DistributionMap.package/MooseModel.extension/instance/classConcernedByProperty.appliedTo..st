*Moose-DistributionMap
classConcernedByProperty: aSelector appliedTo: aClass

	| concernedEntities type propertyResult |
	concernedEntities := self allWithSmalltalkType: aClass.
	concernedEntities do: [:each | 
		[propertyResult := (each perform: aSelector)] on: Error do: [:er | ^ nil].
		propertyResult isNil 
			ifTrue: [^ nil]
			ifFalse: [
				propertyResult isCollection
					ifFalse: [^ nil]
					ifTrue: [
						propertyResult ifNotEmpty: [
							type ifNil: [type := propertyResult anyOne class].
							(propertyResult anyOne class = type)  
								ifFalse: [^ nil]
							]
						]
				] 
		].
	^ type.
	
	
	