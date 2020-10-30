@echo off

goto start

:fail
	echo "Testing failed"
	PAUSE

:start
set PROJECT=%1
set CUBE=%PROJECT%"\Content\Geometry\Meshes\1M_Cube.uasset"
set CAMPFIRE=%PROJECT%"\Content\Geometry\campfire.uasset"
set Bump_StaticMesh=%PROJECT%"\Content\ThirdPerson\Meshes\Bump_StaticMesh.uasset"
set LeftArm_StaticMesh=%PROJECT%"\Content\ThirdPerson\Meshes\LeftArm_StaticMesh.uasset"
set Linear_Stair_StaticMesh=%PROJECT%"\Content\ThirdPerson\Meshes\Linear_Stair_StaticMesh.uasset"
set Ramp_StaticMesh=%PROJECT%"\Content\ThirdPerson\Meshes\Ramp_StaticMesh.uasset"
set RampMaterial=%PROJECT%"\Content\ThirdPerson\Meshes\RampMaterial.uasset"
set RightArm_StaticMesh=%PROJECT%"\Content\ThirdPerson\Meshes\RightArm_StaticMesh.uasset"



echo Project exists...

if exist %PROJECT% (
	echo True...
) ELSE (
	echo False...
	goto fail
)
timeout /t 1

echo "1M_CUBE EXISTS"
if exist %CUBE% (
	echo True...
) ELSE (
	echo False...
	goto fail
)
timeout /t 1

echo "CAMPFIRE EXISTS"
if exist %CAMPFIRE% (
	echo True...
) ELSE (
	echo False...
	goto fail
)

echo "Bump_StaticMesh EXISTS"
if exist %Bump_StaticMesh% (
	echo True...
) ELSE (
	echo False...
	goto fail
)

echo "LeftArm_StaticMesh EXISTS"
if exist %LeftArm_StaticMesh% (
	echo True...
) ELSE (
	echo False...
	goto fail
)

echo "Linear_Stair_StaticMesh EXISTS"
if exist %Linear_Stair_StaticMesh% (
	echo True...
) ELSE (
	echo False...
	goto fail
)

echo "Ramp_StaticMesh EXISTS"
if exist %Ramp_StaticMesh% (
	echo True...
) ELSE (
	echo False...
	goto fail
)

echo "RampMaterial EXISTS"
if exist %RampMaterial% (
	echo True...
) ELSE (
	echo False...
	goto fail
)
timeout /t 1

echo "RightArm_StaticMesh EXISTS"
if exist %RightArm_StaticMesh% (
	echo True...
	goto successful
) ELSE (
	echo False...
	goto fail
)

:successful
	echo "Testing successful"
