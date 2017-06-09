meta
openMetaBrowser

	| tower |

	tower := MooseModel metaBuilder: self withAllSubclasses, FmxStTraitEntity withAllSubclasses.
	MooseMetaBrowser new openOn: tower metamodel