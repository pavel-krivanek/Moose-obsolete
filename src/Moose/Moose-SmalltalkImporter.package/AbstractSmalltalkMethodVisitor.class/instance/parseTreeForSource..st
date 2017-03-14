private
parseTreeForSource: methodSourceString
	^ RBParser parseMethod: methodSourceString
		onError: [:aString :pos | ^nil]