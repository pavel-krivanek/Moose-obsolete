Extension { #name : #TClassDescription }

{ #category : #'*RoelTyper-organization' }
TClassDescription >> categoryForSelector: aSelector [
	"Starting from the receiver, find the category for the given selector (if any). "

	"Works for Squeak as well,so do not use the fancy ifNil:ifNotNil: trick with arguments from VW, as Squeak does not digest it."

	| cat s |
	^(cat := self whichCategoryIncludesSelector: aSelector)
		ifNil:
			[(s := self superclass)
				ifNil: [nil]
				ifNotNil: [s categoryForSelector: aSelector]]
		ifNotNil: [cat]
]
