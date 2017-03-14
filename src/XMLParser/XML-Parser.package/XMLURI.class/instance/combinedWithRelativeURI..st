private
combinedWithRelativeURI: aRelativeURI
	| copy |

	copy := self copy.
	aRelativeURI hasUserInfo
		ifTrue: [
			^ copy
				rawUserInfo: aRelativeURI rawUserInfo;
				rawHost: aRelativeURI rawHost;
				port: aRelativeURI port;
				rawPathSegments: aRelativeURI rawPathSegments;
				rawQuery: aRelativeURI rawQuery;
				rawFragment: aRelativeURI rawFragment].
	aRelativeURI hasHost
		ifTrue: [
			^ copy
				rawHost: aRelativeURI rawHost;
				port: aRelativeURI port;
				rawPathSegments: aRelativeURI rawPathSegments;
				rawQuery: aRelativeURI rawQuery;
				rawFragment: aRelativeURI rawFragment].
	aRelativeURI hasPort
		ifTrue: [
			^ copy
				port: aRelativeURI port;
				rawPathSegments: aRelativeURI rawPathSegments;
				rawQuery: aRelativeURI rawQuery;
				rawFragment: aRelativeURI rawFragment].
	aRelativeURI hasPath
		ifTrue: [
			^ copy
				addRawPathSegmentsFrom: aRelativeURI;
				rawQuery: aRelativeURI rawQuery;
				rawFragment: aRelativeURI rawFragment].
	aRelativeURI hasQuery
		ifTrue: [
			^ copy
				rawQuery: aRelativeURI rawQuery;
				rawFragment: aRelativeURI rawFragment].
	aRelativeURI hasFragment
		ifTrue: [^ copy rawFragment: aRelativeURI rawFragment].