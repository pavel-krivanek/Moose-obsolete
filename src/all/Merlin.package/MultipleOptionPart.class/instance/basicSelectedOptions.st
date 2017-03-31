accessing
basicSelectedOptions

	^ selectedOptions ifNil: [selectedOptions := OrderedCollection withAll: self selectedOptions]