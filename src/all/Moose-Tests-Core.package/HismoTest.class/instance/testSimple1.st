testing - simple scenario
testSimple1
	| history entityVersion1 entityVersion2 model1 model2 classHistories classAHistory |
	history := testData simpleHistory.	"We deal here with an history of models"
	self assert: history class == HismoModelHistory.
	self assert: history printString equals: 'Sample history (5)'.	"The number between () in the history names says the number of versions it contains"
	self assert: history size equals: 5.
	self assert: history versions size equals: 5.
	self assert: history age equals: 5.	"Test of firstVersionOfPropertyNamed:"
	self assert: (history versions first propertyNamed: #NOM) equals: (history firstVersionOfPropertyNamed: #NOM).
	entityVersion1 := history versions first.
	entityVersion2 := history versions second.
	model1 := entityVersion1 versionEntity.
	model2 := entityVersion2 versionEntity.
	self assert: (model1 entityNamed: 'aNamespace::ClassA') methods size equals: 1.
	self assert: (model2 entityNamed: 'aNamespace::ClassA') methods size equals: 2.
	classHistories := history allClassHistories.
	classAHistory := classHistories entityNamed: #aNamespace::ClassA.
	self assert: classAHistory stabilityOfNumberOfMethods equals: 75.0