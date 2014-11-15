<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:d95fe70b-9baa-47fe-ba4a-5f1e20bc3f23(KonamiArduinoML.structure)">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="lih4" modelUID="r:d95fe70b-9baa-47fe-ba4a-5f1e20bc3f23(KonamiArduinoML.structure)" version="-1" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3930718389489351091" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="KonamiCode" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3930718389489351386" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="konami_item" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="3930718389489351271" resolveInfo="Konami_item" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="3930718389489351250" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="EnumKonami" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="3930718389489351251" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="U" />
      <property name="externalValue" nameId="tpce.1083923523172" value="Up" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="3930718389489351252" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="Left" />
      <property name="internalValue" nameId="tpce.1083923523171" value="L" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="3930718389489351255" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="Down" />
      <property name="internalValue" nameId="tpce.1083923523171" value="D" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="3930718389489351259" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="Right" />
      <property name="internalValue" nameId="tpce.1083923523171" value="R" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3930718389489351271" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Konami_item" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="item" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3930718389489351426" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="isBefore" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="3930718389489351271" resolveInfo="Konami_item" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3930718389489351272" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="letter" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="3930718389489351250" resolveInfo="EnumKonami" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3930718389489360426" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="KonamiTransition" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3930718389489360427" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="before" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="3930718389489351271" resolveInfo="Konami_item" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="3930718389489375211" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="after" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="3930718389489351271" resolveInfo="Konami_item" />
    </node>
  </root>
</model>

