CALL osae_sp_object_type_add ('BLUETOOTH','Bluetooth Plugin','','PLUGIN',1,0,0,1);
CALL osae_sp_object_type_state_add('BLUETOOTH','ON','Running');
CALL osae_sp_object_type_state_add('BLUETOOTH','OFF','Disabled');
CALL osae_sp_object_type_event_add('BLUETOOTH','ON','Enabled');
CALL osae_sp_object_type_event_add('BLUETOOTH','OFF','Disabled');
CALL osae_sp_object_type_method_add('BLUETOOTH','ON','Enable','','','','');
CALL osae_sp_object_type_method_add('BLUETOOTH','OFF','Disable','','','','');
CALL osae_sp_object_type_property_add('BLUETOOTH','Scan Interval','Integer','','60',0);
CALL osae_sp_object_type_property_add('BLUETOOTH','Discover Length','Integer','','8',0);
CALL osae_sp_object_type_property_add('BLUETOOTH','Learning Mode','Boolean','','TRUE',0);
CALL osae_sp_object_type_property_add('BLUETOOTH','Computer Name','Object','','',0);
CALL osae_sp_object_type_property_add('BLUETOOTH','System Plugin','Boolean','','FALSE',0);
CALL osae_sp_object_type_property_add('BLUETOOTH','Debug','Boolean','','FALSE',0);

CALL osae_sp_object_type_add ('BLUETOOTH DEVICE','Bluetooth Device','','THING',0,0,0,1);
CALL osae_sp_object_type_state_add('BLUETOOTH DEVICE','ON','Here');
CALL osae_sp_object_type_state_add('BLUETOOTH DEVICE','OFF','Gone');
CALL osae_sp_object_type_event_add('BLUETOOTH DEVICE','ON','Arrived');
CALL osae_sp_object_type_event_add('BLUETOOTH DEVICE','OFF','Left');
CALL osae_sp_object_type_method_add('BLUETOOTH DEVICE','ON','Arriving','','','','');
CALL osae_sp_object_type_method_add('BLUETOOTH DEVICE','OFF','Leaving','','','','');
CALL osae_sp_object_type_property_add('BLUETOOTH DEVICE','Discover Type','String','','',0);