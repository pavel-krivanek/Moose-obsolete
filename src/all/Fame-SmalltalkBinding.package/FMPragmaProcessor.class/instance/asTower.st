converting
asTower
	| tower mm |
	mm := self asMetamodel.
	tower := FMCompleteTower new.
	tower metaMetamodel: mm metamodel.
	tower metamodel: mm.
	tower model: (FMRepository with: mm).
	^ tower

	"This creation code might eventually end up in Tower or Repository,
	just let it grow, it will find its proper place over time."