#define MyAppName "CustomizeMii"
#define MyAppVersion "3.11.1"
#define MyAppPublisher "Leathl (Installer: WiiDatabase Team)"
#define MyAppURL "https://wiidatabase.de/downloads/pc-tools/customizemii-2/"
#define MyAppExeName "CustomizeMii.exe"

[Setup]
AppId={{896C3FEA-7851-4C35-89BF-2F5A3131110E}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName=Wii-Tools
AllowNoIcons=yes
LicenseFile=gpl-3.0.txt
InfoBeforeFile=CustomizeMii\Readme.txt
OutputBaseFilename=CustomizeMii-setup
SetupIconFile=icon.ico
Compression=lzma
AppComments=Kanäle für die Wii erstellen und bearbeiten
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "CustomizeMii\CustomizeMii.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "CustomizeMii\CustomizeMiiInstaller.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "CustomizeMii\ForwardMii.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "CustomizeMii\Instructions.txt"; DestDir: "{app}"; Flags: ignoreversion isreadme
Source: "CustomizeMii\lControls.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "CustomizeMii\libWiiSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "CustomizeMii\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "CustomizeMii\Readme.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "CustomizeMii\zlib1.dll"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent