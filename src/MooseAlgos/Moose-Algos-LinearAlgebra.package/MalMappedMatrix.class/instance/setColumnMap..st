initialize-release
setColumnMap: mapping
	
	columnMap := mapping ifNil: [MalNumberMapping new: matrix columnSize]