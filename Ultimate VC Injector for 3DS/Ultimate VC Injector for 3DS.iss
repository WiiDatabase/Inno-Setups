#define MyAppName "Ultimate VC Injector for 3DS"
#define MyAppVersion "1.8"
#define MyAppPublisher "Asdolo (Installer: WiiDatabase Team)"
#define MyAppURL "https://wiidatabase.de/3ds-downloads/pc-tools/"

[Setup]
AppId={{F35C2880-1EDD-4DF5-971D-660CF655D0E3}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userappdata}\{#MyAppName}
DefaultGroupName=3DS-Tools
AllowNoIcons=yes
OutputBaseFilename=Ultimate-VC-Injector-for-3DS-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=Spiele in 3DS Virtual-Console-Spiele injizieren
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
#define BASE_DIR "Ultimate-VC-Injector-for-3DS"
Source: "{#BASE_DIR}\GBC\Ultimate GBC VC Injector for 3DS.exe"; DestDir: "{app}\Ultimate GBC VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\GBC\*.dll"; DestDir: "{app}\Ultimate GBC VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\GBC\Ultimate GBC VC Injector for 3DS.exe.config"; DestDir: "{app}\Ultimate GBC VC Injector for 3DS"; Flags: ignoreversion

Source: "{#BASE_DIR}\GB\Ultimate GB VC Injector for 3DS.exe"; DestDir: "{app}\Ultimate GB VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\GB\*.dll"; DestDir: "{app}\Ultimate GB VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\GB\Ultimate GB VC Injector for 3DS.exe.config"; DestDir: "{app}\Ultimate GB VC Injector for 3DS"; Flags: ignoreversion

Source: "{#BASE_DIR}\GBA\Ultimate GBA VC Injector for 3DS.exe"; DestDir: "{app}\Ultimate GBA VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\GBA\*.dll"; DestDir: "{app}\Ultimate GBA VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\GBA\Ultimate GBA VC Injector for 3DS.exe.config"; DestDir: "{app}\Ultimate GBA VC Injector for 3DS"; Flags: ignoreversion

Source: "{#BASE_DIR}\Game-Gear\Ultimate GG VC Injector for 3DS.exe"; DestDir: "{app}\Ultimate Game Gear VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\Game-Gear\*.dll"; DestDir: "{app}\Ultimate Game Gear VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\Game-Gear\Ultimate GG VC Injector for 3DS.exe.config"; DestDir: "{app}\Ultimate Game Gear VC Injector for 3DS"; Flags: ignoreversion

Source: "{#BASE_DIR}\NES\Ultimate NES VC Injector for 3DS.exe"; DestDir: "{app}\Ultimate NES VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\NES\*.dll"; DestDir: "{app}\Ultimate NES VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\NES\Ultimate NES VC Injector for 3DS.exe.config"; DestDir: "{app}\Ultimate NES VC Injector for 3DS"; Flags: ignoreversion

Source: "{#BASE_DIR}\T16-PCE\Ultimate T16-PCE VC Injector for 3DS.exe"; DestDir: "{app}\Ultimate T16-PCE VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\T16-PCE\*.dll"; DestDir: "{app}\Ultimate T16-PCE VC Injector for 3DS"; Flags: ignoreversion
Source: "{#BASE_DIR}\T16-PCE\Ultimate T16-PCE VC Injector for 3DS.exe.config"; DestDir: "{app}\Ultimate T16-PCE VC Injector for 3DS"; Flags: ignoreversion

[Icons]
Name: "{group}\Ultimate VC Injector for 3DS\Ultimate GBC VC Injector for 3DS"; Filename: "{app}\Ultimate GBC VC Injector for 3DS\Ultimate GBC VC Injector for 3DS.exe"
Name: "{commondesktop}\Ultimate GBC VC Injector for 3DS"; Filename: "{app}\Ultimate GBC VC Injector for 3DS\Ultimate GBC VC Injector for 3DS.exe"; Tasks: desktopicon

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate GB VC Injector for 3DS"; Filename: "{app}\Ultimate GB VC Injector for 3DS\Ultimate GB VC Injector for 3DS.exe"
Name: "{commondesktop}\Ultimate GB VC Injector for 3DS"; Filename: "{app}\Ultimate GB VC Injector for 3DS\Ultimate GB VC Injector for 3DS.exe"; Tasks: desktopicon

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate GBA VC Injector for 3DS"; Filename: "{app}\Ultimate GBA VC Injector for 3DS\Ultimate GBA VC Injector for 3DS.exe"
Name: "{commondesktop}\Ultimate GBA VC Injector for 3DS"; Filename: "{app}\Ultimate GBA VC Injector for 3DS\Ultimate GBA VC Injector for 3DS.exe"; Tasks: desktopicon

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate Game Gear VC Injector for 3DS"; Filename: "{app}\Ultimate Game Gear VC Injector for 3DS\Ultimate GG VC Injector for 3DS.exe"
Name: "{commondesktop}\Ultimate Game Gear VC Injector for 3DS"; Filename: "{app}\Ultimate Game Gear VC Injector for 3DS\Ultimate GG VC Injector for 3DS.exe"; Tasks: desktopicon

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate NES VC Injector for 3DS"; Filename: "{app}\Ultimate NES VC Injector for 3DS\Ultimate NES VC Injector for 3DS.exe"
Name: "{commondesktop}\Ultimate NES VC Injector for 3DS"; Filename: "{app}\Ultimate NES VC Injector for 3DS\Ultimate NES VC Injector for 3DS.exe"; Tasks: desktopicon

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate T16-PCE VC Injector for 3DS"; Filename: "{app}\Ultimate T16-PCE VC Injector for 3DS\Ultimate T16-PCE VC Injector for 3DS.exe"
Name: "{commondesktop}\Ultimate T16-PCE VC Injector for 3DS"; Filename: "{app}\Ultimate T16-PCE VC Injector for 3DS\Ultimate T16-PCE VC Injector for 3DS.exe"; Tasks: desktopicon