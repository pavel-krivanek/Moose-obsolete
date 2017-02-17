running
traceInferenceOfMetamodel: mseString 
	| tool parser trace |
	tool := FMInferencer new.
	parser := FMMSEParser new.
	parser fromString: mseString.
	parser client: tool.
	parser run.
	trace := FMDebugClient new.
	tool client: trace.
	tool run.
	^ trace