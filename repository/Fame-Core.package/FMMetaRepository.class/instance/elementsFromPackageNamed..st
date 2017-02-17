accessing
elementsFromPackageNamed: aString

	^ self elements select: [:el | el packageName = aString]