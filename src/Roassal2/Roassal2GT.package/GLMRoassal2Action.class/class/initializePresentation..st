initialization
initializePresentation: aRoassal2Presentation
	| instances orderedInstances |
	instances := self allLeafSubclasses collect: #new.
	orderedInstances := instances sortedAs: #order.
	orderedInstances do: [ :inst | 
		inst icon notNil
			ifTrue: [ aRoassal2Presentation
				act: [ :r | inst executeOn: r ]
				icon: inst icon
				entitled: inst title ]
			ifFalse: [ aRoassal2Presentation
				act: [ :r | inst executeOn: r ]
				entitled: inst title
				categorized: inst category ] ]