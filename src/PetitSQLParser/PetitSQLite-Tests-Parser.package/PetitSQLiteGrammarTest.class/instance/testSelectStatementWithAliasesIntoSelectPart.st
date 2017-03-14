tests
testSelectStatementWithAliasesIntoSelectPart
	
	self 
		parse: 'select g.esc_id, g.groupid, g.name as gname, g.diszipid, ''role'' as kind from approleadd r left outer join appgroup g on g.esc_id = r.rolegroup where roleuser = 1 union select g.esc_id, g.groupid, g.name as gname, g.diszipid, ''maingroup'' as kind from appgroup g left outer join appuser u on g.groupid = u.groupid where u.esc_id = 1 order by gname'
		rule: #selectStatement.