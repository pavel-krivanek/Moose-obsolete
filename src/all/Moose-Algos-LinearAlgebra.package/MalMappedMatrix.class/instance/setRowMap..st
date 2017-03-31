initialize-release
setRowMap: mapping
	
	rowMap := mapping ifNil: [MalNumberMapping new: matrix rowSize]