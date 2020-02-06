@ECHO OFF
SET FXC="C:\Program Files (x86)\Windows Kits\10\bin\x64\fxc.exe"
IF EXIST %FXC% (
REM
) ELSE (
ECHO Couldn't find Windows 10 SDK, falling back to DXSDK...
SET FXC="%DXSDK_DIR%\Utilities\bin\x86\fxc.exe"
IF EXIST %FXC% (
REM
) ELSE (
ECHO Couldn't find DXSDK! Exiting...
GOTO END
)
)
%FXC% NiagaraEmitterInstanceShader.usf /E SimulateMainComputeCS /Zpr /Gec /O3 /T cs_5_0 /Ni /FcNiagaraEmitterInstanceShader.d3dasm 
 pause
:END
REM
