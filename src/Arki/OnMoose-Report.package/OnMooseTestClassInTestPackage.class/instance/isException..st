private
isException: aClass
	"we reject the Phexample classes"
	^ aClass superclassHierarchy anySatisfy: [:each | each name = 'Phexample']