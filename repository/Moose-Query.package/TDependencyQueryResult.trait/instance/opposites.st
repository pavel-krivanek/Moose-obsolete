accessing
opposites

	^ self newObjectResultWith: (self storage flatCollectAsSet: [ :d | | opposite | opposite := (self opposite: d). opposite isCollection ifTrue: [ opposite ] ifFalse: [ { opposite } ] ])