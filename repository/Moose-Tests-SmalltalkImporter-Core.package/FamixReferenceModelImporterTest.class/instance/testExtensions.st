package and extensions
testExtensions
	"self debug: #testExtensions"

	| normalClass extendedClass |
	extendedClass := self model entityNamed: SubRootModelTwo mooseName.
	normalClass := self model entityNamed: SubRootModelThree mooseName.
	self assert: extendedClass isExtended.
	self assert: extendedClass packageScope name equals: #'Moose-TestResources-Reference-PackageOne'.
	self assert: (extendedClass methods collect: #packageScope) asSet size equals: 2.
	self
		assert:
			((extendedClass methods collect: #packageScope) asSet
				anySatisfy: [ :each | each name = #'Moose-TestResources-Reference-PackageOne' ]).
	self
		assert:
			((extendedClass methods collect: #packageScope) asSet
				anySatisfy: [ :each | each name = #'Moose-TestResources-Reference-PackageTwo' ]).
	self deny: normalClass isExtended.
	self assert: normalClass packageScope name equals: #'Moose-TestResources-Reference-PackageTwo'.
	self assert: (normalClass methods collect: #packageScope) asSet size equals: 1.
	self
		assert:
			((normalClass methods collect: #packageScope)
				allSatisfy: [ :each | each name = #'Moose-TestResources-Reference-PackageTwo' ])