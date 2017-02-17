tests
testSetAttributes
	| list associations |

	list := self emptyList.
	associations := self attributeAssociations.
	self
		assert: (list setAttributes: associations) == list;
		assert: list attributeAssociations asArray = associations asArray.

	associations :=
		self changedListItems collect: [:each | each name -> each value].
	self
		assert: (list setAttributes: associations) == list;
		assert: list attributeAssociations asArray = associations asArray.