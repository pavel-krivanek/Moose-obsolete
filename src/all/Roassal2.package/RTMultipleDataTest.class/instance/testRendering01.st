tests - rendering
testRendering01

	| g elements |
	g := RTGrapher new.
	g add: d.
	elements := d elements.
	g build.

	self assert: elements first position x asInteger equals: 33.
	self assert: elements second position x asInteger equals: 66.
	
	self assert: elements third position x asInteger equals: 100.
	self assert: elements fourth position x asInteger equals: 133.
