#define MyAppName "Stage Studio"
#define MyAppVersion "v0.08.03"
#define MyAppPublisher "Xane (Installer: WiiDatabase Team)"
#define MyAppURL "http://wiidatabase.de/downloads/pc-tools/super-smash-bros-brawl-stage-studio/"
#define MyAppExeName "StageStudio.exe"

[Setup]
AppId={{CB097409-7313-4FAA-A976-C60E0C44E9C7}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userappdata}\{#MyAppName}
DefaultGroupName=Wii-Tools
AllowNoIcons=yes
OutputBaseFilename=Stage-Studio-setup
SetupIconFile=icon.ico
Compression=lzma
AppComments=Stage Studio von Super Smash Bros. Brawl für den PC
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "Stage-Studio\BGM\*"; DestDir: "{app}\BGM"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Stage-Studio\Config.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "Stage-Studio\ct_oal.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Stage-Studio\OpenAL32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Stage-Studio\ReadMe.txt"; DestDir: "{app}"; Flags: ignoreversion isreadme
Source: "Stage-Studio\StageStudio.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Stage-Studio\Updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Stage-Studio\warp_oal.dll"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent