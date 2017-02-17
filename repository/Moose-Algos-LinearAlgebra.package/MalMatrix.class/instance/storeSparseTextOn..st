printing
storeSparseTextOn: aStream
	"Append to the argument aStream a sequence of characters 
	that identifies the collection."
	
	aStream
		print: self columnSize;
		space;
		print: self rowSize;
		space;
		print: self sparseSize;
		cr.
	self rows
		do:
			[:row | 
			aStream
				print: row sparseSize;
				cr.
			row
				doSparseWithIndex:
					[:value :index | 
					aStream
						print: index - 1;
						space;
						print: value;
						cr]]