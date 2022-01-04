@echo off

dotnet publish ..\BlazorInnoDemo.Wpf\ -c Release -o .\Publish -p:PublishReadyToRun=true -p:PublishSingleFile=true --self-contained true -p:IncludeNativeLibrariesForSelfExtract=true

"C:\Program Files (x86)\Inno Setup 6\ISCC.exe" ".\inno_install_script.iss"

pause