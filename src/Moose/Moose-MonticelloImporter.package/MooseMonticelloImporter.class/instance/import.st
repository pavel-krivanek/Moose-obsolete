public
import
	"Import all files found in the repository"
	| names |
	self setRepository.
	self setMooseModel.
	names := self fileNames.
	names do: [ :name | self importFileNamed: name ].
	^ targetModel