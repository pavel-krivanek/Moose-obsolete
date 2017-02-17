initialize-release
with: anImporter name: aString 
	owner := anImporter.
	metaDescription := owner metamodel elementNamed: aString.
	instance := metaDescription createInstance