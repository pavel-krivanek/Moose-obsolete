tests
testElementsSelect
	| list selectedElements |

	list := self listWithItems.
	selectedElements :=
		self listElements
			copyFrom: 1
			to: (self listElements size / 2) floor.
	self
		assertList: (list elementsSelect: [:each | selectedElements includes: each])
		copiedFrom: list
		equals: (self listClass newFrom: selectedElements).