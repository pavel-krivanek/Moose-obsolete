spec
ns_flow_map_entry
	"
		TODO JK: s_separate is optional, even though doc say, it is not.
		Yet, how else to parse: { ? } into nil -> nil ??
	"
	^ 	($? asParser, s_separate optional, ns_flow_map_explicit_entry ==> #third) /
		ns_flow_map_implicit_entry