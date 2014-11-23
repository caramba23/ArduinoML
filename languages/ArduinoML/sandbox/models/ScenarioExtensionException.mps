<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:f534fc9b-fbb6-4ee5-9b54-512b59af8b6b(ScenarioExtensionException)">
  <persistence version="8" />
  <language namespace="a2972a4d-fe83-4d24-b15a-90c11d704033(ArduinoML)" />
  <import index="njwj" modelUID="r:04a6934a-c553-4c28-b7a0-2f6ceb94de8d(ArduinoML.structure)" version="1" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="njwj.Arduino" typeId="njwj.6603453658766418501" id="1173392206391503644" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="extension" />
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="1173392206391813188" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="led" />
      <property name="pin" nameId="njwj.6603453658766474934" value="12" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="1173392206391813183" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="button1" />
      <property name="pin" nameId="njwj.6603453658766474934" value="8" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="1173392206391813185" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="button2" />
      <property name="pin" nameId="njwj.6603453658766474934" value="9" />
    </node>
    <node role="state_machine" roleId="njwj.6603453658766474901" type="njwj.StateMachine" typeId="njwj.6603453658766474873" id="1173392206391503645" nodeInfo="ng">
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="1173392206391813215" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="state1" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1173392206391813217" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1173392206391813215" resolveInfo="state1" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1173392206391503646" resolveInfo="init" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1173392206391813192" resolveInfo="button1released" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1173392206391813223" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1173392206391813215" resolveInfo="state1" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1173392206391813204" resolveInfo="button2pressed" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1173392206391504843" resolveInfo="sink" />
        </node>
      </node>
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="1173392206391813219" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="state2" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1173392206391813226" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1173392206391813219" resolveInfo="state2" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1173392206391813190" resolveInfo="button1pressed" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1173392206391504843" resolveInfo="sink" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1173392206391813231" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1173392206391813219" resolveInfo="state2" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1173392206391813208" resolveInfo="button2released" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1173392206391503646" resolveInfo="init" />
        </node>
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="1173392206391813190" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="button1pressed" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="1173392206391813183" resolveInfo="button1" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="1173392206391813192" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="button1released" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="1173392206391813183" resolveInfo="button1" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="1173392206391813204" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="button2pressed" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="1173392206391813185" resolveInfo="button2" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="1173392206391813208" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="button2released" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="1173392206391813185" resolveInfo="button2" />
      </node>
      <node role="sinks" roleId="njwj.3930718389488592258" type="njwj.Sink" typeId="njwj.3930718389488572001" id="1173392206391504843" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="sink" />
        <property name="error_code" nameId="njwj.3930718389488591801" value="5" />
      </node>
      <node role="state_initial" roleId="njwj.2691553813575841901" type="njwj.State" typeId="njwj.6603453658766715235" id="1173392206391503646" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="init" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1173392206391813213" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1173392206391503646" resolveInfo="init" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1173392206391813190" resolveInfo="button1pressed" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1173392206391813215" resolveInfo="state1" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1173392206391813228" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1173392206391503646" resolveInfo="init" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1173392206391813219" resolveInfo="state2" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1173392206391813204" resolveInfo="button2pressed" />
        </node>
      </node>
    </node>
  </root>
</model>

