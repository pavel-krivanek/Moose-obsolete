accessing-xsd
restrictionXsd
	<xml: #xsdXsd>
	<xsd>

	^ '<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:xsd="http://www.w3.org/2001/XMLSchema"
        xmlns:tns="http://soapinterop.org/types"
        targetNamespace="http://soapinterop.org/types"
        attributeFormDefault="qualified">

  <simpleType name="drinksize">
    <restriction base="string">
      <enumeration value="small"/>
      <enumeration value="medium"/>
      <enumeration value="large"/>
    </restriction>
  </simpleType>

  <complexType name="dietdrinksize">
    <simpleContent>
      <restriction base="tns:drinksize">
        <enumeration value="small"/>
        <enumeration value="medium"/>
        <attribute name="units" type="string" use="required"/>
        <attribute name="id" type="integer" use="required" default="001"/>
      </restriction>
    </simpleContent>
  </complexType>

</schema>'