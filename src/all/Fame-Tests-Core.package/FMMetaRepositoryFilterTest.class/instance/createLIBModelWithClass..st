tests-export
createLIBModelWithClass: class

	| tower repository model filteredMetamodel stream filter importer |

	model := {LIBBook new title: 'aBook'. LIBLibrary new. LIBPerson new name: 'aPerson'}.
	stream := String new writeStream..

	filter := FMMetaRepositoryFilter new
	    metaRepository: libModel;
	    classes: {libModel descriptionOf: class}.
	filter run.

	"collecting the filtered metamodel"
	filteredMetamodel := filter newMetaRepository.

	"exporting the model (with the filtered metamodel) as mse"
	tower := FMCompleteTower new.
	tower metaMetamodel: filteredMetamodel metamodel.
	tower metamodel: filteredMetamodel.
	tower model: (repository := (FMRepository with: filteredMetamodel) addAll: model).
	tower model exportOn: stream.

	"reading the strem (mse) with the filtered model"
	tower := FMCompleteTower new.
	tower metamodel addAll: filteredMetamodel elements.
	importer := FMImporter new.
	importer repository: tower model.
	importer stream: stream contents readStream.
	importer run.
	tower model updateCache.
	^ tower model