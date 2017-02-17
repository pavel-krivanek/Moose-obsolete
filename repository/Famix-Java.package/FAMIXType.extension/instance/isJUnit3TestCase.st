*Famix-Java
isJUnit3TestCase
	^ self superclassHierarchy anySatisfy: [:each | each mooseName =  #'junit::framework::TestCase']