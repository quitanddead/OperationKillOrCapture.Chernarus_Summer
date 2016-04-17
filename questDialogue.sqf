//Quest Dialogue functions

dingus_fnc_interview0 = {
  guide globalChat "Hello, I am Johan, a local guide. I will be assisting you on your visit. I suggest you start by interviewing the local witnesses.";
  missionNamespace setVariable ["interview0", '1'];
};

dingus_fnc_interview8 = {
  guide globalChat "OK that's great. I think we should make our way into the forest and set up base camp before night fal. Let's go.";
  missionNamespace setVariable ["interview8", '1'];
};


//---------------------------
//Hunting Shack
dingus_fnc_interview1 = {
  civ0 globalChat "I saw something crazy over at the hunting shack not far from here. I don't know what it was. Let me mark it on your map for you. I wouldn't go there at night though.";
  missionNamespace setVariable ["interview1", '1'];
  ["markerHuntingShack"] call dingus_fnc_ShowMarker;
  hint "Your map has been updated."
};

//civ0 addAction ["Interview", "[] call dingus_fnc_interview1", [], 1.5, true, true, "", "missionNamespace getVariable [""interview1"", false]"];
//---------------------------


//---------------------------
//Small Shack
dingus_fnc_interview2 = {
  civ1 globalChat "Check out the Small Shack way up in the North East. It's really spooky there around dawn. I'll never go back there again. Here's the location.";
  ["markerSmallShack"] call dingus_fnc_ShowMarker;
  missionNamespace setVariable ["interview2", '1'];
  hint "Your map has been updated."
};

//civ1 addAction ["Interview", "[] call dingus_fnc_interview2", [], 1.5, true, true, "", "missionNamespace getVariable [""interview2"", false]"];
//---------------------------



//---------------------------
//Radio Tower
dingus_fnc_interview3 = {
  civ2 globalChat "There's an abandoned radio tower to the East that most folks are afraid to visit. The crew that was stationed there disappeared without a trace one Summer.";
  missionNamespace setVariable ["interview3", '1'];
  ["markerRadioTower"] call dingus_fnc_ShowMarker;
  hint "Your map has been updated."
};

//civ2 addAction ["Interview", "[] call dingus_fnc_interview3", [], 1.5, true, true, "", "missionNamespace getVariable [""interview3"", false]"];
//---------------------------


//---------------------------
//Chapel Ruins
dingus_fnc_interview4 = {
  civ3 globalChat "Those chapel ruins to the North really freak me out. Ever since I heard what happened there, I won't visit anymore.";
  missionNamespace setVariable ["interview4", '1'];
  ["markerChapelRuins"] call dingus_fnc_ShowMarker;
  hint "Your map has been updated."
};

//civ3 addAction ["Interview", "[] call dingus_fnc_interview4", [], 1.5, true, true, "", "missionNamespace getVariable [""interview4"", false]"];
//---------------------------


//---------------------------
//Journalist
//Old Bungalow, Research Site
dingus_fnc_interview5 = {
  journalist1 globalChat "I'm here researching these stories too. In addition to what these guys have reported, I've also heard stories about the Old Bungalow and the Research Site. Both are on your map. Good luck out there!";
  missionNamespace setVariable ["interview5", '1'];
  ["markerOldBungalow"] call dingus_fnc_ShowMarker;
  ["markerResearchSite"] call dingus_fnc_ShowMarker;
  hint "Your map has been updated."
};

//journalist1 addAction ["Interview", "[] call dingus_fnc_interview5", [], 1.5, true, true, "", "missionNamespace getVariable [""interview5"", false]"];
//---------------------------


//---------------------------
//Guide
dingus_fnc_interview6 = {
  guide globalChat "I'm going to set up base camp. Follow me if you'd like. Otherwise, head through the forest entrance and I'll meet you there.";
  missionNamespace setVariable ["interview6", '1'];
  ["markerBaseCamp"] call dingus_fnc_ShowMarker;  // ---- fix this we need a different marker
  hint "Your map has been updated."
};

//guide addAction ["Interview", "[] call dingus_fnc_interview6", [], 1.5, true, true, "", "missionNamespace getVariable [""interview6"", false]"];
//---------------------------


//---------------------------
//Hunter
//markerCrashSite
dingus_fnc_interview7 = {
  hunter1 globalChat "If you haven't seen it yet, I'd take a trip over to the helicopter crash site and check it out. I'll mark it on your map.";
  missionNamespace setVariable ["interview7", '1'];
  ["markerCrashSite"] call dingus_fnc_ShowMarker;
  hint "Your map has been updated."
};

//hunter1 addAction ["Interview", "[] call dingus_fnc_interview7", [], 1.5, true, true, "", "missionNamespace getVariable [""interview7"", false]"];
//---------------------------

       civ0 addAction ["Interview witness", "[] call dingus_fnc_interview1", [], 1.5, true, true, "", "missionNamespace getVariable ['interview0', '0'] == '1' && missionNamespace getVariable ['interview1', '0'] == '0';"];
       civ1 addAction ["Interview witness", "[] call dingus_fnc_interview2", [], 1.5, true, true, "", "missionNamespace getVariable ['interview1', '0'] == '1' && missionNamespace getVariable ['interview2', '0'] == '0';"];
       civ2 addAction ["Interview witness", "[] call dingus_fnc_interview3", [], 1.5, true, true, "", "missionNamespace getVariable ['interview2', '0'] == '1' && missionNamespace getVariable ['interview3', '0'] == '0';"];
       civ3 addAction ["Interview witness", "[] call dingus_fnc_interview4", [], 1.5, true, true, "", "missionNamespace getVariable ['interview3', '0'] == '1' && missionNamespace getVariable ['interview4', '0'] == '0';"];
journalist1 addAction ["Are you investigating the creature too?", "[] call dingus_fnc_interview5", [], 1.5, true, true, "", "missionNamespace getVariable ['interview5', '0'] == '0';"];  //Journalist interview5
    hunter1 addAction ["What do you know about the creature?", "[] call dingus_fnc_interview7", [], 1.5, true, true, "", "missionNamespace getVariable ['interview7', '0'] == '0';"];  //Hunter interview7

      guide addAction ["Are you Johan my contact?", "[] call dingus_fnc_interview0", [], 1.5, true, true, "", "missionNamespace getVariable ['interview0', '0'] == '0';"];
      guide addAction ["I'm done interviewing the witnesses.", "[] call dingus_fnc_interview8", [], 1.5, true, true, "", "missionNamespace getVariable ['interview6', '0'] == '1';"];


