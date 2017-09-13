accessing
subvertexs: aVertex
	"The set of Vertices that are owned by this Region."
	self subvertexs
		removeAll;
		addAll: aVertex