tests
testElementsAt
	self listElements do: [:element | | list elementsAt changedElement |
		list := self listWithItems.
		elementsAt :=
			self listElements select: [:each |
				each isNamed: element name].
		self assert:
			(list elementsAt: element name) =
				(self listClass newFrom: elementsAt).

		changedElement := self changedListItem: element.
		list addFirst: changedElement.
		elementsAt := elementsAt copyWithFirst: changedElement.
		self assert:
			(list elementsAt: element name) =
				(self listClass newFrom: elementsAt).

		list remove: element.
		elementsAt := elementsAt copyWithout: element.
		self assert:
			(list elementsAt: element name) =
				(self listClass newFrom: elementsAt)].