accessing
imageUrl
	^ self fileBaseUrl / self projectId / self version asString / 'artifact' / self imageZip