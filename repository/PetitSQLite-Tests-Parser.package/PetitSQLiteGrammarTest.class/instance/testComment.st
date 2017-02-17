tests
testComment
	self 
		parse: 'COMMENT ON TABLE DB2YTST.TPE0752
  IS ''ISDP Beziehungsart (VPZ07521)''' "result should be 'ALL' "
		rule: #comment.
