as yet unclassified
isWithinScope: anEvent

	^tower notNil and: [
		anEvent itemClass notNil and: [
			tower metamodel classes anySatisfy: [ :fameClass |
				fameClass implementingClass notNil ifTrue: [
					fameClass implementingClass = anEvent itemClass theNonMetaClass ]]]].
	
