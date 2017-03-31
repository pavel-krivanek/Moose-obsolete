running
testClient
	| tool client |
	tool := FMInferencer new.
	tool client: (client := FMDebugClient new).
	tool client should = client