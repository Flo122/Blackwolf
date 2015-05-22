/*
	File: fn_vehShopLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks what shop it is and sometimes the vehicle to determine whether or not they have the license.
	
	Returns:
	TRUE if they have the license or are allowed to get that specific vehicle without having that license.
	FALSE if they don't have the license or are not allowed to obtain that vehicle.
*/
private["_veh","_ret"];
_veh = _this select 0;
_ret = false;

if(_veh == "B_Quadbike_01_F") exitWith {true}; //ATV's don't need to require a license anymore.

switch (life_veh_shop select 0) do
{
	case "med_shop": {_ret = true;};
	case "dezzie_car": {_ret = license_civ_driver;};
	case "kart_shop": {_ret = license_civ_driver;};
	case "med_air_hs": {_ret = license_med_air;};
	case "civ_car": {_ret = license_civ_driver;};
	case "Automotive_shop": {_ret = license_civ_driver;};
	case "ford_car": {_ret = license_civ_driver;};
	case "chev_car": {_ret = license_civ_driver;};
	case "dodge_car": {_ret = license_civ_driver;};
	case "exo_car": {_ret = license_civ_driver;};
	
	
	
	case "job_1": {_ret = license_civ_truck;};
	case "job_2": {_ret = license_civ_driver;};
	case "Quad_Cart_shop": {_ret = license_civ_driver;};
	case "Auto_Salon_Thomsen_car": {_ret = license_civ_driver;};
	case "Low_Budget_Cars_car": {_ret = license_civ_driver;};
	case "BMW_shop": {_ret = license_civ_driver;};
	case "Volkswagen_shop": {_ret = license_civ_driver;};
	case "Audi_shop": {_ret = license_civ_driver;};
	case "Porsche_shop": {_ret = license_civ_driver;};
	case "Lamborghini_shop": {_ret = license_civ_driver;};
	case "Ferrari_shop": {_ret = license_civ_driver;};
	case "Mercedes_shop": {_ret = license_civ_driver;};
	case "Trucker_Tony_truck": {_ret = license_civ_driver;};
	case "Aston_Martin_car": {_ret = license_civ_driver;};
	case "Autohaus_Lakeside_car": {_ret = license_civ_driver;};
	case "Range_Rover_shop": {_ret = license_civ_driver;};
	case "F_car": {_ret = license_civ_driver;};
	
	case "C7N_car": {_ret = license_civ_driver;};
	case "Chevrolet_car": {_ret = license_civ_driver;};
	case "Dogde_car": {_ret = license_civ_driver;};

	
	
	
	
	
	
	
	
	
	
	
	
	case "civ_ship": {_ret = license_civ_boat;};
	case "civ_air": {_ret = license_civ_air;};
	case "cop_air": {_ret = license_cop_air;};
	case "cop_airhq": {_ret = license_cop_air;};
	case "civ_truck":	{_ret = license_civ_truck;};
	case "reb_car": {_ret = license_civ_rebel;};
	case "cop_car": {_ret = true;};
	case "cop_ship": 
	{
		if(_veh == "B_Boat_Armed_01_minigun_F") then
		{
			_ret = license_cop_cg;
		}
			else
		{
			_ret = true;
		};
	};
};

_ret;