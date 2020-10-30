# Cheap_Souls

A third person, souls-like game demo, made in unreal engine (c++). The game would include PVM combat and 1 basic quest with the main goal of killing the boss. We would create at least 2 playable areas, one where the boss fight will take place,and an NPC filled map where the player controlled character can start the main questline and prepare for the bossfight.

Creators: Szente István           (gd3ikp)
          Ágoston Bálint          (sa0mpz)
          Vasoczki Alex Dávid     (xcta4m)

UE4 Build script:

	Description:
		These scripts build Unreal Engine 4 game projects using the engine source code provided by Epic on github. They do so by performing the following 3 steps:
		Clones a fresh copy of the engine from github.
		Runs the Setup script to download the dependencies provided by Epic to the engine directory.
		Runs Unreal Automation Tool to build the game, cooks the content and packages it.

	Windows:
		build-ue4-game.bat "<full path to our .uproject file>" "win64" "Development" "git@github.com:EpicGames/UnrealEngine.git" "4.25" "<full path to desired engine location>" "<full path to archive directory>"
	Mac:
		./build-ue4-game.sh -project "<full path to our .uproject file>" -platform "IOS" -clientconfig "Shipping" -engineurl "git@github.com:EpicGames/UnrealEngine.git" -enginecheckout "4.25" -enginedirectory "<full path to desired engine location>" -archivedirectory "<full path to archive directory>"

	Example:
		build-ue4-game.bat "D:\cheapsouls\Cheap_Souls\Cheapsouls\Cheapsouls.uproject" "win64" "Development" "git@github.com:EpicGames/UnrealEngine.git" "4.25" "D:\unreal_engine\UE_4.25" "D:\unreal_engine\archi"



UE4 Test script:
		
	Usage:
		test_content_exists.bat "<full path to uproject directory>"
		
		
Jenkins CI Automation, scripts in jenkins-scripts directory