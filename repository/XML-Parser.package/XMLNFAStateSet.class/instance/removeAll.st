removing
removeAll
	"Redefined because Collection>>removeAll assumes the collection can
	be safely modified while iterating it with do:, and 'set removeAll'
	is not used because GS's Set/IdentitySet don't implement it"

	self initialize: self capacity