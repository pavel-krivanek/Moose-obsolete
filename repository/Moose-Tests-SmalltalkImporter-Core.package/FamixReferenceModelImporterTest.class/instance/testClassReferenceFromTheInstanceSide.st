new tests
testClassReferenceFromTheInstanceSide
	"self debug: #testClassReferenceFromTheInstanceSide"

	"TheRoot>>accessingClass

		Object new"

	| definingClassName methodName className refs |
	className := Object mooseName.
	definingClassName := TheRoot mooseName.
	methodName := (TheRoot >> #accessingClass) mooseName.
	refs := self model allReferences
		select: [ :acc | acc from mooseName = methodName and: [ acc to mooseName = className ] ].
	self assert: refs size equals: 1