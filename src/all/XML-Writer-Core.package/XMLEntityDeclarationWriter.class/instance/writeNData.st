private
writeNData
	self writer
		space;
		nextPutAll: 'NDATA';
		space;
		writeName: self ndata