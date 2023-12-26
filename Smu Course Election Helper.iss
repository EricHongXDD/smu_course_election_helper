; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "Smu Course Election Helper"
#define MyAppVersion "1.0"
#define MyAppPublisher "Hong"
#define MyAppURL "https://github.com/EricHongXDD/smu_course_election_helper"
#define MyAppExeName "Smu Course Election Helper V1.0.exe"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (��Ҫ�����µ� GUID�����ڲ˵��е�� "����|���� GUID"��)
AppId={{80056978-16BA-416E-B1AE-A8A0D886F7D6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
InfoBeforeFile=C:\Users\1029277025\PycharmProjects\smu_jwxt\Smu Course Election Helper\Agreement.txt
InfoAfterFile=C:\Users\1029277025\PycharmProjects\smu_jwxt\Smu Course Election Helper\Agreement.txt
; ������ȡ��ע�ͣ����ڷǹ���װģʽ�����У���Ϊ��ǰ�û���װ����
;PrivilegesRequired=lowest
OutputDir=Smu Course Election Helper
OutputBaseFilename=Smu Course Election Helper
SetupIconFile=C:\Users\1029277025\PycharmProjects\smu_jwxt\Smu Course Election Helper\logo.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\1029277025\PycharmProjects\smu_jwxt\Smu Course Election Helper\Smu Course Election Helper V1.0.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\1029277025\PycharmProjects\smu_jwxt\Smu Course Election Helper\_internal\*"; DestDir: "{app}\_internal"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\1029277025\PycharmProjects\smu_jwxt\Smu Course Election Helper\res\*"; DestDir: "{app}\res"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\1029277025\PycharmProjects\smu_jwxt\Smu Course Election Helper\Agreement.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\1029277025\PycharmProjects\smu_jwxt\Smu Course Election Helper\logo.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\1029277025\PycharmProjects\smu_jwxt\Smu Course Election Helper\Smu Course Election Helper V1.0.exe"; DestDir: "{app}"; Flags: ignoreversion
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

