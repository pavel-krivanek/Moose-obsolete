accessing-xsd
includeWithNamespaceXsd
	<xml: #xsdXsd>
	<xsd>
	
	^ '<?xml version="1.0" encoding="UTF-8"?>
<xs:schema
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tns="http://tns.demo.org"
    targetNamespace="http://tns.demo.org"
    attributeFormDefault="unqualified"
    elementFormDefault="qualified">
  <xs:include schemaLocation="src/test/test-resources/includedWithoutNamespace.xsd"/>

  <xs:element name="foo" type="tns:XdwsGroupId"/>
</xs:schema>'