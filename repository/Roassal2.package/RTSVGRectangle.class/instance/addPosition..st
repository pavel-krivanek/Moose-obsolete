adding
addPosition: stream
	stream
		nextPutAll:
				('x="<1p>" y="<2p>" ' expandMacrosWith: (self box topLeft x round: 2) with: (self box topLeft y round: 2)).