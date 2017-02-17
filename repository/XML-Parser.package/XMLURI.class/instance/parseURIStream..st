private
parseURIStream: aStream
	| parser |

	parser := XMLURIParser on: aStream.
	self
		scheme: parser parseScheme;
		hasAuthorityPrefix: parser parseAuthorityPrefix.
	(self hasScheme
		or: [self hasAuthorityPrefix])
		ifTrue: [
			self
				rawUserInfo: parser parseUserInfo;
				rawHost: parser parseHost;
				port: parser parsePort]
		ifFalse: [
			self
				rawUserInfo: '';
				rawHost: ''].
	self
		rawPathSegments: parser parsePathSegments;
		rawQuery: parser parseQuery;
		rawFragment: parser parseFragment.