accessing-xsd
includeWithoutNamespaceXsd
	<xml: #xsdXsd>
	<xsd>
	
	^ '<?xml version="1.0" encoding="UTF-8"?>
<xs:schema
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    attributeFormDefault="unqualified"
    elementFormDefault="qualified">
  <xs:simpleType name="XdwsPrincipalId">
    <xs:restriction base="xs:string"/>
  </xs:simpleType>

  <xs:simpleType name="XdwsGroupId">
    <xs:restriction base="XdwsPrincipalId"/>
  </xs:simpleType>
</xs:schema>'