copying
copyWithQuery: anAssociationCollection
	| newRawQuery |

	newRawQuery := OrderedCollection new: anAssociationCollection size.
	anAssociationCollection associationsDo: [:each |
		newRawQuery addLast:
			(self percentAndPlusEncode: each key) ->
				(self percentAndPlusEncode: each value)].
	^ self copy rawQuery: newRawQuery.