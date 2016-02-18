#define MyAppName "ShowMiiWads"
#define MyAppVersion "1.5 Mod"
#define MyAppPublisher "Leathl, orwel (Installer: WiiDatabase Team)"
#define MyAppURL "http://wiidatabase.de/downloads/pc-tools/showmiiwads/"
#define MyAppExeName "ShowMiiWads.exe"

[Setup]
AppId={{98F974CE-363A-47BC-BEEF-BC0C9B15668F}
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
LicenseFile=gpl-2.0.txt
InfoBeforeFile=ShowMiiWads\Readme.txt
OutputBaseFilename=ShowMiiWads-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=WAD-Dateien und den NAND ansehen und editieren
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "ShowMiiWads\ShowMiiWads_64.exe"; DestDir: "{app}"; DestName: "ShowMiiWads.exe"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "ShowMiiWads\ShowMiiWads_32.exe"; DestDir: "{app}"; DestName: "ShowMiiWads.exe"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: "ShowMiiWads\example.slang"; DestDir: "{app}"; Flags: ignoreversion
Source: "ShowMiiWads\FAQ.txt"; DestDir: "{app}"; Flags: ignoreversion isreadme
Source: "ShowMiiWads\libWiiSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "ShowMiiWads\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "ShowMiiWads\License_libWiiSharp.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "ShowMiiWads\Readme_libWiiSharp.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "ShowMiiWads\Readme.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "ShowMiiWads\external\*"; DestDir: "{app}\external"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

