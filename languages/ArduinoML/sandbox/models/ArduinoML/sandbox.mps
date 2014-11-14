<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:e7022bae-c27b-4095-af6b-b14ff2d66cbf(ArduinoML.sandbox)">
  <persistence version="8" />
  <language namespace="a2972a4d-fe83-4d24-b15a-90c11d704033(ArduinoML)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="njwj" modelUID="r:04a6934a-c553-4c28-b7a0-2f6ceb94de8d(ArduinoML.structure)" version="1" implicit="yes" />
  <root type="njwj.Arduino" typeId="njwj.6603453658766418501" id="2691553813575631258" nodeInfo="ng">
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="6203620729198017536" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="button" />
      <property name="pin" nameId="njwj.6603453658766474934" value="8" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="6203620729198222007" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="buttton2" />
      <property name="pin" nameId="njwj.6603453658766474934" value="9" />
    </node>
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="2691553813575660620" nodeInfo="ng">
      <property name="pin" nameId="njwj.6603453658766474934" value="10" />
      <property name="name" nameId="njwj.6603453658766474932" value="led" />
    </node>
    <node role="state_machine" roleId="njwj.6603453658766474901" type="njwj.StateMachine" typeId="njwj.6603453658766474873" id="2691553813575631259" nodeInfo="ng">
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="4944954952475770688" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="waitButton1" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="4944954952475770703" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="4944954952475770688" resolveInfo="waitButton1" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="2691553813575903101" resolveInfo="init" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="4944954952475954532" resolveInfo="button2Desactivate" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="4944954952475954670" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="4944954952475770688" resolveInfo="waitButton1" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="2691553813575660623" resolveInfo="buttonActivate" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="4944954952475954705" resolveInfo="alarm" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="4944954952475985448" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="2691553813575660639" resolveInfo="led_OFF" />
        </node>
      </node>
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="4944954952475954623" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="waitButton2" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="4944954952475954711" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="4944954952475954623" resolveInfo="waitButton2" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="4944954952475954528" resolveInfo="button2Activate" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="4944954952475954705" resolveInfo="alarm" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="4944954952475954713" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="4944954952475954623" resolveInfo="waitButton2" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="2691553813575660625" resolveInfo="buttonDesactivate" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="2691553813575903101" resolveInfo="init" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="4944954952475985450" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="2691553813575660639" resolveInfo="led_OFF" />
        </node>
      </node>
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="4944954952475954705" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="alarm" />
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="4944954952475954716" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="2691553813575660637" resolveInfo="led_ON" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="4944954952475954718" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="4944954952475954705" resolveInfo="alarm" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="2691553813575660625" resolveInfo="buttonDesactivate" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="4944954952475770688" resolveInfo="waitButton1" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="4944954952475954720" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="4944954952475954705" resolveInfo="alarm" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="4944954952475954532" resolveInfo="button2Desactivate" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="4944954952475954623" resolveInfo="waitButton2" />
        </node>
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="2691553813575660637" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="led_ON" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="2691553813575660620" resolveInfo="led" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="2691553813575660639" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="led_OFF" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="LOW" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="2691553813575660620" resolveInfo="led" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="2691553813575660623" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="buttonActivate" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="6203620729198017536" resolveInfo="button" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="2691553813575660625" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="buttonDesactivate" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="LOW" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="6203620729198017536" resolveInfo="button" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="4944954952475954528" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="button2Activate" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="6203620729198222007" resolveInfo="buttton2" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="4944954952475954532" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="button2Desactivate" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="6203620729198222007" resolveInfo="buttton2" />
      </node>
      <node role="state_initial" roleId="njwj.2691553813575841901" type="njwj.State" typeId="njwj.6603453658766715235" id="2691553813575903101" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="init" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="2691553813575903103" nodeInfo="ng">
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="2691553813575660623" resolveInfo="buttonActivate" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="4944954952475770688" resolveInfo="waitButton1" />
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="2691553813575903101" resolveInfo="init" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="4944954952475954563" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="2691553813575903101" resolveInfo="init" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="4944954952475954528" resolveInfo="button2Activate" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="4944954952475954623" resolveInfo="waitButton2" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="4944954952475954540" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="2691553813575660639" resolveInfo="led_OFF" />
        </node>
      </node>
    </node>
  </root>
</model>

