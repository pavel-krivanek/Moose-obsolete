Extension { #name : #ZnCharacterReadStream }

{ #category : #'*Famix-SourceAnchor' }
ZnCharacterReadStream >> oneBack [
	"This will only work on stream knowing all its content. "

	^ self wrappedStream skip: -1
]

{ #category : #'*Famix-SourceAnchor' }
ZnCharacterReadStream >> position [
	"This will only work on stream knowing all its content. "

	^ self wrappedStream position
]
