#define MyAppName "Gamecube-Tools"
#define MyAppVersion "1.0"
#define MyAppPublisher "Crediar, tueidj, suloku (Installer: WiiDatabase Team)"
#define MyAppURL "https://wiidatabase.de/downloads/pc-tools/"
#define MyAppExeName "gcreex.exe"

[Setup]
AppId={{C51E81AB-0648-4996-A833-CD4EF367E4C7}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
LicenseFile=gpl-3.0.txt
OutputBaseFilename=Gamecube-Tools-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=Gamecube-Kommandozeilentools
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True
                 
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Files]
Source: "Gamecube-Tools\gcreex.exe"; DestDir: "{app}"; DestName: "gcreex.exe"; Flags: ignoreversion;
Source: "Gamecube-Tools\DiscEx.exe"; DestDir: "{app}"; DestName: "DiscEx.exe"; Flags: ignoreversion;
Source: "Gamecube-Tools\GCpadder.exe"; DestDir: "{app}"; DestName: "GCpadder.exe"; Flags: ignoreversion;
Source: "Gamecube-Tools\GCSerial.exe"; DestDir: "{app}"; DestName: "GCSerial.exe"; Flags: ignoreversion;
Source: "Gamecube-Tools\ZeldaTPConverter.exe"; DestDir: "{app}"; DestName: "ZeldaTPConverter.exe"; Flags: ignoreversion;
Source: "Gamecube-Tools\libeay32.dll"; DestDir: "{app}"; DestName: "libeay32.dll"; Flags: ignoreversion;
Source: "Gamecube-Tools\msvcr100.dll"; DestDir: "{app}"; DestName: "msvcr100.dll"; Flags: ignoreversion;

[Registry]
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; \
    ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}"; \
    Check: NeedsAddPath('{app}')

[Code]
// https://stackoverflow.com/a/31733896
// Adds Path to PATH (if needed)
function NeedsAddPath(Param: string): boolean;
var
  OrigPath: string;
  ParamExpanded: string;
begin
  //expand the setup constants like {app} from Param
  ParamExpanded := ExpandConstant(Param);
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Control\Session Manager\Environment',
    'Path', OrigPath)
  then begin
    Result := True;
    exit;
  end;
  // look for the path with leading and trailing semicolon and with or without \ ending
  // Pos() returns 0 if not found
  Result := Pos(';' + UpperCase(ParamExpanded) + ';', ';' + UpperCase(OrigPath) + ';') = 0;  
  if Result = True then
     Result := Pos(';' + UpperCase(ParamExpanded) + '\;', ';' + UpperCase(OrigPath) + ';') = 0; 
end;

// https://stackoverflow.com/a/35411841
// removes Path from PATH
const
  EnvironmentKey = 'SYSTEM\CurrentControlSet\Control\Session Manager\Environment';

procedure RemovePath(Path: string);
var
  Paths: string;
  P: Integer;
begin
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE, EnvironmentKey, 'Path', Paths) then
  begin
    Log('PATH not found');
  end
    else
  begin
    Log(Format('PATH is [%s]', [Paths]));

    P := Pos(';' + Uppercase(Path) + ';', ';' + Uppercase(Paths) + ';');
    if P = 0 then
    begin
      Log(Format('Path [%s] not found in PATH', [Path]));
    end
      else
    begin
      Delete(Paths, P - 1, Length(Path) + 1);
      Log(Format('Path [%s] removed from PATH => [%s]', [Path, Paths]));

      if RegWriteStringValue(HKEY_LOCAL_MACHINE, EnvironmentKey, 'Path', Paths) then
      begin
        Log('PATH written');
      end
        else
      begin
        Log('Error writing PATH');
      end;
    end;
  end;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usUninstall then
  begin
    RemovePath(ExpandConstant('{app}'));
  end;
end;