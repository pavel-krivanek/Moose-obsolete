running
run


	| parser |
	parser := FMMSEParser new.
	parser stream: parserClient stream.
	parser client: self.
	parser run.