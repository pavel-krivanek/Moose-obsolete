compiling-parser
compileCacheId
	| stream |
	stream := WriteStream with: String new.
	stream
		nextPutAll: 'cacheId';
		cr;
		tab;
		nextPutAll: '^''';
		nextPutAll: DateAndTime now printString;
		nextPut: $'.
	parserClass theMetaClass compile: stream contents classified: #'generated-accessing'