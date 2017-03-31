private
nameFromQualified: aCollection

	^(aCollection size = 1)
		ifTrue: [PJSimpleNameNode identifier: aCollection first]
          ifFalse: [
			PJQualifiedNameNode 
				name: (PJSimpleNameNode identifier: aCollection last)
				qualifier: (self nameFromQualified: aCollection allButLast ).]