tests
testContainerFilesWithoutFileReferenced
	"This test was added because before if a multiple source anchor does not have the corresponding files we got array of nils"

	| anchor |
	anchor := self actualClass new
		addSourceAnchor: FAMIXFileAnchor new;
		addSourceAnchor: FAMIXFileAnchor new;
		yourself.
	self assert: anchor containerFiles size equals: 0