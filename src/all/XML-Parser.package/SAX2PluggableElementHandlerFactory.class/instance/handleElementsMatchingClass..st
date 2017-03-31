handling
handleElementsMatchingClass: aClass
	"This will handle all elements matching the name of a class with that
	class, but igoring the class's prefix and any 'Element' or 'ElementHandler'
	suffix.

	For example, it will match MyUserDefinedElement to:
		<UserDefined>
		<userDefined>
		<user-defined>
		<user_defined>"

	elementClassMapper
		mapAllMatchingElementsToClass: aClass
		ignoringSuffixes: self ignorableClassNameSuffixes