accessing
groupMetaClass

	^ MooseModel meta elements detect: [:each | each isFM3Class and: [each implementingClass = self groupClass ] ] ifNone: [].