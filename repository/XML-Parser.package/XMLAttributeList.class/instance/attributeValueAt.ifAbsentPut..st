private
attributeValueAt: aName ifAbsentPut: aBlock
	^ self
		attributeValueAt: aName
		ifAbsent: [
			self
				attributeValueAt: aName
				put: aBlock value]