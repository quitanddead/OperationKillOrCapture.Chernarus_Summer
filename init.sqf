execVM "loot.sqf";
execVM "actionHelper.sqf";

//We actually want to do this later...after their initial weapon has been put away
//player0 execVM "EnableWeaponHolstering.sqf";
//player1 execVM "EnableWeaponHolstering.sqf";

//Create diary records
execVM "diary.sqf";


//Sit Init
MAC_fnc_switchMove = {
  private["_object","_anim"];
  _object = _this select 0;
  _anim = _this select 1;

  _object switchMove _anim;
    
};