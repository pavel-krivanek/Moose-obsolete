meta
generateClassesFrom: aCollection
	"I generate the implementation for some meta-described classes. aCollection need to contain the full set of meta-described classes so that the metamodel is complete. Warning, part of classes will be overwritten."

	| tower generator |
	tower := self metaBuilder: aCollection withProcessor: self newPragmaProcessor.
	generator := FMDefaultCodeGenerator new.
	generator visit: tower metamodel.
	generator previewChanges