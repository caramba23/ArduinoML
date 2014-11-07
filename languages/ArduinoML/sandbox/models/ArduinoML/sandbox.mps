<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:e7022bae-c27b-4095-af6b-b14ff2d66cbf(ArduinoML.sandbox)">
  <persistence version="8" />
  <language namespace="a2972a4d-fe83-4d24-b15a-90c11d704033(ArduinoML)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="njwj" modelUID="r:04a6934a-c553-4c28-b7a0-2f6ceb94de8d(ArduinoML.structure)" version="0" implicit="yes" />
  <root type="njwj.Arduino" typeId="njwj.6603453658766418501" id="1449878858754221476" nodeInfo="ng">
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="1449878858754221516" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="led" />
      <property name="pin" nameId="njwj.6603453658766474934" value="12" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="1449878858754221514" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="button1" />
      <property name="pin" nameId="njwj.6603453658766474934" value="11" />
    </node>
    <node role="state_machine" roleId="njwj.6603453658766474901" type="njwj.StateMachine" typeId="njwj.6603453658766474873" id="1449878858754221477" nodeInfo="ng">
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="1449878858754221522" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="idle" />
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="1449878858754347504" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="1449878858754221520" resolveInfo="ledAllum" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1449878858754221533" nodeInfo="ng">
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1449878858754221518" resolveInfo="boutonPress" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1449878858754221530" resolveInfo="allume" />
        </node>
      </node>
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="1449878858754221530" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="allume" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="1449878858754221520" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="ledAllum" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="1" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="1449878858754221516" resolveInfo="led" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="1449878858754221518" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="boutonPress" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="1" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="1449878858754221514" resolveInfo="button1" />
      </node>
    </node>
  </root>
</model>

