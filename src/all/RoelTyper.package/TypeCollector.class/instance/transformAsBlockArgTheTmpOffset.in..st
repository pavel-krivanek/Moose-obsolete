adding
transformAsBlockArgTheTmpOffset: offset in: aCompiledMethod 
	((localTypingResults at: aCompiledMethod ) at: (offset + 1)) asBlockArgInTypeCollector: self