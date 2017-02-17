private
lookupSerial: name
	^indexDict at: name ifAbsentPut: [ serial := serial + 1 ].