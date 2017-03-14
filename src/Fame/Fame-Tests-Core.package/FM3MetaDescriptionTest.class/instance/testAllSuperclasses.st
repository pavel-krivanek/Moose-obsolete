running
testAllSuperclasses

	| elem |

	elem := tower metaMetamodel elementNamed: 'FM3.Class'.
	elem allSuperclasses notNil should beTrue.
	elem allSuperclasses isCollection should beTrue.
	elem allSuperclasses size should = 2.

	elem := FM3 object.
	elem allSuperclasses notNil should beTrue.
	elem allSuperclasses isCollection should beTrue.
	elem allSuperclasses isEmpty should beTrue.
	
	elem := FM3 string.
	elem allSuperclasses notNil should beTrue.
	elem allSuperclasses isCollection should beTrue.
	elem allSuperclasses size should = 1.	
	
	elem := FM3 number.
	elem allSuperclasses notNil should beTrue.
	elem allSuperclasses isCollection should beTrue.
	elem allSuperclasses size should = 1.
	
	elem := FM3 boolean.
	elem allSuperclasses notNil should beTrue.
	elem allSuperclasses isCollection should beTrue.
	elem allSuperclasses size should = 1.