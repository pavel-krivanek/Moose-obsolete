private
interestingClasses
	^ (self model allModelClasses entityNamed: #'Smalltalk::MooseEntity') withSubclassHierarchyGroup	
"	select: [:each | 
		each isSUnitTestCase not and: [
			#(Moose MO GLM FAMIX) anySatisfy: [:prefix | 
				each name beginsWith: prefix ]]]"