"
A FAMIXMultipleFileAnchorTest is a test class for testing the behavior of FAMIXMultipleFileAnchor
"
Class {
	#name : #FAMIXMultipleFileAnchorTest,
	#superclass : #FAMIXSourceAnchorTest,
	#category : #'Famix-Tests-Core'
}

{ #category : #helpers }
FAMIXMultipleFileAnchorTest >> actualClass [
	^ FmxNGMultipleFileAnchor
]

{ #category : #tests }
FAMIXMultipleFileAnchorTest >> testContainerFiles [
	| anchor file1 file2 |
	anchor := self actualClass new
		addSourceAnchor:
			(FmxNGFileAnchor new
				correspondingFile:
					(file1 := FmxNGFile new
						name: 'test';
						yourself);
				yourself);
		addSourceAnchor:
			(FmxNGFileAnchor new
				correspondingFile:
					(file2 := FmxNGFile new
						name: 'test2';
						yourself);
				yourself);
		yourself.
	self assert: anchor containerFiles size equals: 2.
	(anchor containerFiles collect: #name) do: [ :fileName | self assert: (#('test' 'test2') includes: fileName) ]
]

{ #category : #tests }
FAMIXMultipleFileAnchorTest >> testContainerFilesWithoutFileReferenced [
	"This test was added because before if a multiple source anchor does not have the corresponding files we got array of nils"

	| anchor |
	anchor := self actualClass new
		addSourceAnchor: FmxNGFileAnchor new;
		addSourceAnchor: FmxNGFileAnchor new;
		yourself.
	self assert: anchor containerFiles size equals: 0
]

{ #category : #tests }
FAMIXMultipleFileAnchorTest >> testIsMultiple [
	^ self assert: self actualClass new isMultiple
]
