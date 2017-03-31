private
parseURIStringIfUnparsed
	scheme
		ifNil: [self parseURIStream: self uriString readStream]