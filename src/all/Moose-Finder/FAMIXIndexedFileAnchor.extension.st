Extension { #name : #FAMIXIndexedFileAnchor }

{ #category : #'*Moose-Finder' }
FAMIXIndexedFileAnchor >> intervalAsCharPos [
	^ self startPos to: self endPos
]
