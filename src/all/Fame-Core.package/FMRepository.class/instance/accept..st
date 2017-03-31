streaming
accept: aParseClient

	| visitor |
	visitor := FMRepositoryVisitor new.
	visitor model: self.
	visitor printer: aParseClient.
	visitor run.