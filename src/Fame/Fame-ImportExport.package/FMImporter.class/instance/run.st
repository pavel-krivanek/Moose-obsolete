running
run

	| parser |
	parser := FMMSEParser new.
	parser stream: stream.
	parser client: self.
	parser run.
