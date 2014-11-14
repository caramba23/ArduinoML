<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:e7022bae-c27b-4095-af6b-b14ff2d66cbf(ArduinoML.LevelCrossing)">
  <persistence version="8" />
  <language namespace="a2972a4d-fe83-4d24-b15a-90c11d704033(ArduinoML)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="njwj" modelUID="r:04a6934a-c553-4c28-b7a0-2f6ceb94de8d(ArduinoML.structure)" version="1" implicit="yes" />
  <root type="njwj.Arduino" typeId="njwj.6603453658766418501" id="2691553813575631258" nodeInfo="ng">
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="6203620729198017536" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="barrier" />
      <property name="pin" nameId="njwj.6603453658766474934" value="8" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="6203620729198222007" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="alarmButton" />
      <property name="pin" nameId="njwj.6603453658766474934" value="9" />
    </node>
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="2691553813575660620" nodeInfo="ng">
      <property name="pin" nameId="njwj.6603453658766474934" value="10" />
      <property name="name" nameId="njwj.6603453658766474932" value="ledRed" />
    </node>
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="3755390211024893167" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="ledGreen" />
      <property name="pin" nameId="njwj.6603453658766474934" value="11" />
    </node>
    <node role="state_machine" roleId="njwj.6603453658766474901" type="njwj.StateMachine" typeId="njwj.6603453658766474873" id="2691553813575631259" nodeInfo="ng">
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="4944954952475770688" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="green_Light" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="4944954952475770703" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="4944954952475770688" resolveInfo="green_Light" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="4944954952475954528" resolveInfo="alarmPush" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="4944954952475954705" resolveInfo="alarm_red" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="4944954952475954670" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="4944954952475770688" resolveInfo="green_Light" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="2691553813575660625" resolveInfo="barrierDown" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="2691553813575903101" resolveInfo="red_Light" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211024982909" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="2691553813575660639" resolveInfo="led_Red_OFF" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211024939429" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211024893170" resolveInfo="led_Green_ON" />
        </node>
      </node>
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="4944954952475954705" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="alarm_red" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211024939578" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="4944954952475954705" resolveInfo="alarm_red" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211024939567" resolveInfo="alarm_green" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="4944954952475954716" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="2691553813575660637" resolveInfo="led_Red_ON" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211024939563" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211024893174" resolveInfo="led_Green_OFF" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="4944954952475954720" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="4944954952475954705" resolveInfo="alarm_red" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="4944954952475954532" resolveInfo="alarmRelease" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="2691553813575903101" resolveInfo="red_Light" />
        </node>
      </node>
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="3755390211024939567" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="alarm_green" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211024939592" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211024939567" resolveInfo="alarm_green" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="4944954952475954705" resolveInfo="alarm_red" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211024939594" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211024939567" resolveInfo="alarm_green" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="4944954952475954532" resolveInfo="alarmRelease" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="2691553813575903101" resolveInfo="red_Light" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211024939583" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="2691553813575660639" resolveInfo="led_Red_OFF" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211024939588" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211024893170" resolveInfo="led_Green_ON" />
        </node>
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="2691553813575660637" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="led_Red_ON" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="2691553813575660620" resolveInfo="ledRed" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="2691553813575660639" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="led_Red_OFF" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="LOW" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="2691553813575660620" resolveInfo="ledRed" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211024893170" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="led_Green_ON" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211024893167" resolveInfo="ledGreen" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211024893174" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="led_Green_OFF" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211024893167" resolveInfo="ledGreen" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="2691553813575660623" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="barrierUp" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="6203620729198017536" resolveInfo="barrier" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="2691553813575660625" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="barrierDown" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="LOW" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="6203620729198017536" resolveInfo="barrier" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="4944954952475954528" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="alarmPush" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="6203620729198222007" resolveInfo="alarmButton" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="4944954952475954532" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="alarmRelease" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="LOW" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="6203620729198222007" resolveInfo="alarmButton" />
      </node>
      <node role="state_initial" roleId="njwj.2691553813575841901" type="njwj.State" typeId="njwj.6603453658766715235" id="2691553813575903101" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="red_Light" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="2691553813575903103" nodeInfo="ng">
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="2691553813575660623" resolveInfo="barrierUp" />
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="2691553813575903101" resolveInfo="red_Light" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="4944954952475770688" resolveInfo="green_Light" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211024939433" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="2691553813575903101" resolveInfo="red_Light" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="4944954952475954528" resolveInfo="alarmPush" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211024939567" resolveInfo="alarm_green" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211024982917" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211024893174" resolveInfo="led_Green_OFF" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211024939390" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="2691553813575660637" resolveInfo="led_Red_ON" />
        </node>
      </node>
    </node>
  </root>
</model>

