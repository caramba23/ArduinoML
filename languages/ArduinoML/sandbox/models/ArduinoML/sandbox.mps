<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:e7022bae-c27b-4095-af6b-b14ff2d66cbf(ArduinoML.sandbox)">
  <persistence version="8" />
  <language namespace="a2972a4d-fe83-4d24-b15a-90c11d704033(ArduinoML)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="njwj" modelUID="r:04a6934a-c553-4c28-b7a0-2f6ceb94de8d(ArduinoML.structure)" version="0" implicit="yes" />
  <root type="njwj.Arduino" typeId="njwj.6603453658766418501" id="2691553813575631258" nodeInfo="ng">
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="2691553813575660615" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="buzzer" />
      <property name="pin" nameId="njwj.6603453658766474934" value="2" />
    </node>
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="2691553813575660620" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="led" />
      <property name="pin" nameId="njwj.6603453658766474934" value="3" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="2691553813575660613" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="button" />
      <property name="pin" nameId="njwj.6603453658766474934" value="8" />
    </node>
    <node role="state_machine" roleId="njwj.6603453658766474901" type="njwj.StateMachine" typeId="njwj.6603453658766474873" id="2691553813575631259" nodeInfo="ng">
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="4944954952475770688" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="alarm" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="4944954952475770703" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="4944954952475770688" resolveInfo="alarm" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="2691553813575903101" resolveInfo="init" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="2691553813575660623" resolveInfo="buttonPress" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="4944954952475833149" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="2691553813575660637" resolveInfo="led_ON" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="4944954952475833154" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="257836016458146759" resolveInfo="buzzer_ON" />
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
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="257836016458146759" nodeInfo="ng">
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <property name="name" nameId="njwj.5947772584489025391" value="buzzer_ON" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="2691553813575660615" resolveInfo="buzzer" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="257836016458146735" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="buzzer_OFF" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="2691553813575660615" resolveInfo="buzzer" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="2691553813575660623" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="buttonPress" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="2691553813575660613" resolveInfo="button" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="2691553813575660625" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="buttonRelease" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="LOW" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="2691553813575660613" resolveInfo="button" />
      </node>
      <node role="state_initial" roleId="njwj.2691553813575841901" type="njwj.State" typeId="njwj.6603453658766715235" id="2691553813575903101" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="init" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="2691553813575903103" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="2691553813575903101" resolveInfo="init" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="2691553813575660623" resolveInfo="buttonPress" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="4944954952475770688" resolveInfo="alarm" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="4944954952475035828" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="2691553813575660639" resolveInfo="led_OFF" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="4944954952475035839" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="257836016458146735" resolveInfo="buzzer_OFF" />
        </node>
      </node>
    </node>
  </root>
</model>

