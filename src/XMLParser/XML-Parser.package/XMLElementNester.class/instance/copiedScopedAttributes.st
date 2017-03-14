private
copiedScopedAttributes
	| copiedAttributes |

	copiedAttributes :=
		self hasScopedAttributes
			ifTrue: [self scopedAttributes removeLast copy]
			ifFalse: [Dictionary new].
	self scopedAttributes addLast: copiedAttributes.

	^ copiedAttributes.