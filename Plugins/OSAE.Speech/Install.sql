CALL osae_sp_object_type_add ('SPEECH','Generic Plugin Class','Speech','PLUGIN',1,0,0,1);
CALL osae_sp_object_type_state_add('SPEECH','ON','Running');
CALL osae_sp_object_type_state_add('SPEECH','OFF','Stopped');
CALL osae_sp_object_type_event_add('SPEECH','ON','Started');
CALL osae_sp_object_type_event_add('SPEECH','OFF','Stopped');
CALL osae_sp_object_type_method_add('SPEECH','ON','On','','','','');
CALL osae_sp_object_type_method_add('SPEECH','OFF','Off','','','','');
CALL osae_sp_object_type_method_add('SPEECH','SPEAK','Say','Message','','Hello','');
CALL osae_sp_object_type_method_add('SPEECH','SPEAKFROM','Say From List','Object Name','Property Name','Speech List','Greetings');
CALL osae_sp_object_type_method_add('SPEECH','PLAY','Play','File','','','');
CALL osae_sp_object_type_method_add('SPEECH','PLAYFROM','Play From List','List','','','');
CALL osae_sp_object_type_method_add('SPEECH','STOP','Stop','','','','');
CALL osae_sp_object_type_method_add('SPEECH','PAUSE','Pause','','','','');
CALL osae_sp_object_type_method_add('SPEECH','MUTEVR','Mute the Microphone','','','','');
CALL osae_sp_object_type_method_add('SPEECH','SETVOICE','Set Voice','Voice','','Anna','');
CALL osae_sp_object_type_method_add('SPEECH','SETTTSRATE','Set TTS Rate','Rate','','0','');
CALL osae_sp_object_type_method_add('SPEECH','SETTTSVOLUME','Set TTS Volume','Volume','','100','');
CALL osae_sp_object_type_property_add('SPEECH','Computer Name','Object','','',0);
CALL osae_sp_object_type_property_add('SPEECH','Voice','String','','',0);
CALL osae_sp_object_type_property_add('SPEECH','Voices','List','','',0);
CALL osae_sp_object_type_property_add('SPEECH','System Plugin','Boolean','','FALSE',0);
CALL osae_sp_object_type_property_add('SPEECH','TTS Rate','Integer','','',0);
CALL osae_sp_object_type_property_add('SPEECH','TTS Volume','Integer','','',0);
CALL osae_sp_object_type_property_add('SPEECH','Speaking','Boolean','','FALSE',0);
CALL osae_sp_object_type_property_add('SPEECH','Debug','Boolean','','FALSE',0);
