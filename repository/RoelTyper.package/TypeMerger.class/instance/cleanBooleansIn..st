private
cleanBooleansIn: collection
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