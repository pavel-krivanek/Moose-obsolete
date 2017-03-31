accessing
computeResult
	| propertyMethods simplePropertyMethods propertyMethodsWithOpposite uncommented |
	simplePropertyMethods := (self model allAnnotationTypes entityNamed: 'MSEProperty:type:') annotatedEntities. 
	propertyMethodsWithOpposite :=  (self model allAnnotationTypes entityNamed: 'MSEProperty:type:opposite:') annotatedEntities.
	propertyMethods := simplePropertyMethods, propertyMethodsWithOpposite.
	uncommented := propertyMethods select: [:each |
		(each parentType withSuperclassHierarchy anySatisfy: [:x | x name = 'MooseEntity']) and: [
			(each isAnnotatedWith: 'MSEComment:') not] ].
	^ uncommented asMooseGroup sorted: [:a :b | a name < b name ]