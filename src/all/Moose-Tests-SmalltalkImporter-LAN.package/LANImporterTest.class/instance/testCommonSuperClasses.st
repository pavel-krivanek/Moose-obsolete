tests
testCommonSuperClasses
	"self debug: #testCommonSuperClasses"

	self
		assert:
			(self model allPackages entityNamed: #'Moose-TestResources-LAN') localClassesGroup commonExternalSuperclasses size
		equals: 11