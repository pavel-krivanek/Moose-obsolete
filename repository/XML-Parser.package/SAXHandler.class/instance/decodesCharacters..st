configuring
decodesCharacters: aBoolean
	"When enabled, character decoding will be tried if the input is binary, if
	it starts with a byte order mark (BOM) sequence, if the input looks like
	undecoded UTF-16 or UTF-32 (because of null chars before or after the first
	non-null ASCII char), or if the input is an XMLDecodingReadStreamAdapter,
	and when decoding is being done and an <?xml ...?> declarations is parsed,
	its encoding attribute will be obeyed. (default)"

	self configuration decodesCharacters: aBoolean