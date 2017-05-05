accessing
opposites
	^ self newObjectResultWith: (self storage flatCollectAsSet: [ :d | (self opposite: d) asCollection ])