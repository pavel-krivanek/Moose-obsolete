sorting
sort
	self sort: [:a :b | a sortKey <= b sortKey]