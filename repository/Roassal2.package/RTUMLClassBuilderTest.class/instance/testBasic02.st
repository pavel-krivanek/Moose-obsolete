tests
testBasic02

	| classes classNode b |
	classes := OrderedCollection new.

	classNode := #('Node').

	b := RTUMLClassBuilder new.
	b forSelfMadeClasses.
	b addObjects: (Array with: classNode).
	b build
