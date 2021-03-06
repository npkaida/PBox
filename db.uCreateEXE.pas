unit db.uCreateEXE;
{
  创建 EXE 窗体
}

interface

uses Winapi.Windows, Winapi.ShellAPI, System.Win.Registry, System.SysUtils, System.Classes, Vcl.Forms, Vcl.ComCtrls, Vcl.StdCtrls, db.uCommon;

procedure PBoxRun_IMAGE_EXE(const strEXEFileName, strFileValue: String; ts: TTabSheet; lblInfo: TLabel; OnPEProcessDestroyCallback: TNotifyEvent);

implementation

var
  FstrFileValue              : string;
  FstrEXEFormClassName       : string = '';
  FstrEXEFormTitleName       : string = '';
  FTabsheet                  : TTabSheet;
  FlblInfo                   : TLabel;
  FOnPEProcessDestroyCallback: TNotifyEvent;

  { 进程关闭后，变量复位 }
procedure EndExeForm(hWnd: hWnd; uMsg, idEvent: UINT; dwTime: DWORD); stdcall;
var
  intPID: DWORD;
begin
  intPID := Application.MainForm.Tag;
  if intPID = 0 then
    Exit;

  if CheckProcessExist(intPID) then
    Exit;

  KillTimer(Application.MainForm.Handle, $2000);
  FOnPEProcessDestroyCallback(nil);
end;

{ 查找 EXE 的主窗体是否成功创建 }
procedure FindExeForm(hWnd: hWnd; uMsg, idEvent: UINT; dwTime: DWORD); stdcall;
var
  hEXEFormHandle: THandle;
  intPID        : DWORD;
begin
  if (Trim(FstrEXEFormClassName) = '') and (Trim(FstrEXEFormTitleName) <> '') then
    hEXEFormHandle := FindWindow(nil, PChar(FstrEXEFormTitleName))
  else if (Trim(FstrEXEFormClassName) <> '') and (Trim(FstrEXEFormTitleName) = '') then
    hEXEFormHandle := FindWindow(PChar(FstrEXEFormClassName), nil)
  else
    hEXEFormHandle := FindWindow(PChar(FstrEXEFormClassName), PChar(FstrEXEFormTitleName));

  if hEXEFormHandle <> 0 then
  begin
    KillTimer(Application.MainForm.Handle, $1000);
    GetWindowThreadProcessId(hEXEFormHandle, intPID);
    Application.MainForm.Tag := intPID;

    FTabsheet.PageControl.ActivePage := FTabsheet;
    Winapi.Windows.SetParent(hEXEFormHandle, FTabsheet.Handle);                                                                                            // 设置父窗体为 TabSheet
    SetWindowPos(hEXEFormHandle, FTabsheet.Handle, 0, 0, FTabsheet.Width, FTabsheet.Height, SWP_NOZORDER OR SWP_NOACTIVATE);                               // 最大化 Dll 子窗体
    RemoveMenu(GetSystemMenu(hEXEFormHandle, False), 0, MF_BYPOSITION);                                                                                    // 删除移动菜单
    RemoveMenu(GetSystemMenu(hEXEFormHandle, False), 0, MF_BYPOSITION);                                                                                    // 删除移动菜单
    RemoveMenu(GetSystemMenu(hEXEFormHandle, False), 0, MF_BYPOSITION);                                                                                    // 删除移动菜单
    RemoveMenu(GetSystemMenu(hEXEFormHandle, False), 0, MF_BYPOSITION);                                                                                    // 删除移动菜单
    RemoveMenu(GetSystemMenu(hEXEFormHandle, False), 0, MF_BYPOSITION);                                                                                    // 删除移动菜单
    RemoveMenu(GetSystemMenu(hEXEFormHandle, False), 0, MF_BYPOSITION);                                                                                    // 删除移动菜单
    SetWindowLong(hEXEFormHandle, GWL_STYLE, Integer(WS_CAPTION OR WS_POPUP OR WS_VISIBLE OR WS_CLIPSIBLINGS OR WS_CLIPCHILDREN OR WS_SYSMENU));           // $96C80000);                                                                        // $96000000
    SetWindowLong(hEXEFormHandle, GWL_EXSTYLE, Integer(WS_EX_LEFT OR WS_EX_LTRREADING OR WS_EX_DLGMODALFRAME OR WS_EX_WINDOWEDGE OR WS_EX_CONTROLPARENT)); // $00010000);                                                                              // $00010101
    DelayTime(200);                                                                                                                                        // 延时 500毫秒
    ShowWindow(hEXEFormHandle, SW_SHOWNORMAL);                                                                                                             // 显示窗体
    Application.MainForm.Height := Application.MainForm.Height + 1;
    Application.MainForm.Height := Application.MainForm.Height - 1;
    FlblInfo.Caption            := FstrFileValue.Split([';'])[0] + ' - ' + FstrFileValue.Split([';'])[1];
    SetTimer(Application.MainForm.Handle, $2000, 200, @EndExeForm);
  end;
end;

procedure CheckSysinternalsREG(const strProgramName: String);
begin
  with TRegistry.Create do
  begin
    RootKey := HKEY_CURRENT_USER;
    if not OpenKey('Software\Sysinternals\' + strProgramName, False) then
    begin
      OpenKey('Software\Sysinternals\' + strProgramName, True);
      WriteInteger('EulaAccepted', 1);
    end;
    Free;
  end;
end;

{ 检查 Sysinternals 软件许可 }
procedure CheckSysinternalsAllow(const strEXEFileName: String);
const
  c_strSysinternalsSoft: array [0 .. 6] of string = ('AutoRuns.exe', 'AutoRuns64.exe', 'DbgView.exe', 'procexp.exe', 'procexp64.exe', 'Procmon.exe', 'Procmon64.exe');
var
  strFileName: String;
begin
  strFileName := ExtractFileName(strEXEFileName);
  if (SameText(strFileName, c_strSysinternalsSoft[0])) or (SameText(strFileName, c_strSysinternalsSoft[1])) then
    CheckSysinternalsREG('AutoRuns')
  else if SameText(strFileName, c_strSysinternalsSoft[2]) then
    CheckSysinternalsREG('DbgView')
  else if (SameText(strFileName, c_strSysinternalsSoft[3])) or (SameText(strFileName, c_strSysinternalsSoft[4])) then
    CheckSysinternalsREG('Process Explorer')
  else if (SameText(strFileName, c_strSysinternalsSoft[5])) or (SameText(strFileName, c_strSysinternalsSoft[6])) then
    CheckSysinternalsREG('Process Monitor');
end;

procedure PBoxRun_IMAGE_EXE(const strEXEFileName, strFileValue: String; ts: TTabSheet; lblInfo: TLabel; OnPEProcessDestroyCallback: TNotifyEvent);
begin
  FTabsheet                   := ts;
  FlblInfo                    := lblInfo;
  FstrFileValue               := strFileValue;
  FOnPEProcessDestroyCallback := OnPEProcessDestroyCallback;
  FstrEXEFormClassName        := strFileValue.Split([';'])[2];
  FstrEXEFormTitleName        := strFileValue.Split([';'])[3];
  SetTimer(Application.MainForm.Handle, $1000, 200, @FindExeForm);

  { 删除插件配置文件中关于窗体位置的配置信息 }
  CheckPlugInConfigSize;

  { 检查 Sysinternals 软件许可 }
  CheckSysinternalsAllow(strEXEFileName);

  { 创建 EXE 进程，并隐藏窗体 }
  ShellExecute(Application.MainForm.Handle, 'Open', PChar(strEXEFileName), nil, nil, SW_HIDE);
  // DelayTime(200);
end;

end.
