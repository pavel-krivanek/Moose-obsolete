Class {
	#name : #TypeMerger,
	#superclass : #Object,
	#category : #RoelTyper-Core
}

{ #category : #'instance creation' }
TypeMerger class >> interfaceTypes: interfaceTypeCollection assignmentTypes: assignmentTypesCollection [
	^self new
		mergeInterfaceTypes: interfaceTypeCollection
		assignmentTypes: assignmentTypesCollection
]

{ #category : #private }
TypeMerger >> cleanBooleansIn: collection [
	"Remove all occurences of True, False and Boolean in the given collection. If any element was removed, add Boolean"

	"Note: removeAllSuchThat: in VisualWorks returns the elements removed, while in Squeak it returns the new set. Therefore I adopted a check on the sizes to see if any Boolean class was removed or not, instead of checking the result of removeAllSuchThat: "

	| oldSize |
	oldSize := collection size.
	collection
		removeAllSuchThat:
			[:type | type == True | (type == False) | (type == Boolean)].
	^oldSize == collection size
		ifFalse:
			[collection
				add: Boolean;
				yourself]
		ifTrue: [collection]
]

{ #category : #public }
TypeMerger >> mergeInterfaceTypes: interfaceTypeCollection assignmentTypes: assignmentTypesCollection [
	"interfaceTypes is a set of trees of types reconstructed by looking at the interfaces.
	assignmentTypes is a set of trees of types reconstructed by looking at the assignments.
	The receiver takes these sets as input and needs to return one set of trees of types that combines both."

	^self subclassResponsibility
]
