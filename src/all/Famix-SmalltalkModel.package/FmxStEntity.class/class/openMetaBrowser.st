meta
openMetaBrowser

	| tower |

	tower := MooseModel metaBuilder: self withAllSubclasses.
	MooseMetaBrowser new openOn: tower metamodel