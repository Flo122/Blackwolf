/*
	File: fn_medicRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Notifies the medics that someone has requested emergency and prompts them
	if they want to take the request or not.
*/
private["_caller","_callerName"];
diag_log format["::ADAC Request aufgerufen::"];
if(life_job == 99) then {
	if(life_adac_onDuty) then {
		_caller = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
		_callerName = [_this,1,"Unknown Player",[""]] call BIS_fnc_param;
		if(isNull _caller) exitWith {}; //Bad data
		_alreadyInList= false;
		{
			if(_x select 0 == _caller)then{
				_alreadyInList = true;
						
			};
		}foreach life_adacMarker;
		if(_alreadyInList) exitWith {};
		life_adacMarker set [count life_adacMarker,[_caller,_callerName]];
		diag_log format["::ADAC MARKET SET::%1::", life_adacMarker];
		["MedicalRequestEmerg",[format["%1 ruft den ADAC.",_callerName]]] call BIS_fnc_showNotification;

	};
};