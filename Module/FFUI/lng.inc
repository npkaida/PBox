const
  c_strMsgTitle: PChar = 'ϵͳ��ʾ��';

function TfrmFFUI.TransUI(const strLang: string): String;
begin
  if FlngUI = lngEnglish then
  begin
    if SameText(strLang, String(c_strMsgTitle)) then
      Result := 'System Information��'
    else if SameText(strLang, '��Ƶ������Ϣ������Ϊ�գ���������ȷ��ֵ') then
      Result := 'Video Info is not null, must be input'
    else if SameText(strLang, '����������ȷ��Ƶ�Ŀ��͸�') then
      Result := 'Must be intput video width/height'
    else if SameText(strLang, '����ѡ��һ��Ŀ¼��������ת�������Ƶ') then
      Result := 'Must be select a folder, save convert'
    else if SameText(strLang, '����ѡ��һ��Ŀ¼��������������Ƶ') then
      Result := 'Must be select a folder, save split'
    else if SameText(strLang, 'ѡ�񱣴���Ƶת�����Ŀ¼��') then
      Result := 'select a folder, save convert��'
    else if SameText(strLang, 'ѡ�񱣴���Ƶ��ȡ���Ŀ¼') then
      Result := 'select a folder, save cut��'
    else if SameText(strLang, 'ѡ��Ŀ¼��') then
      Result := 'select folder��'
    else if SameText(strLang, 'ѡ��һ��Ŀ¼��Ŀ¼�°�����Ƶ�ļ�') then
      Result := 'select a folder, the folder contains video'
    else if SameText(strLang, 'Ŀ¼���ƣ�') then
      Result := 'Folder name��'
    else if SameText(strLang, '������Ƶ��ַ��') then
      Result := 'Web stream addr��'
    else if SameText(strLang, '��ַ��') then
      Result := 'Addr��'
    else if SameText(strLang, '����ѡ���һ����Ƶ�ļ����ٲ���') then
      Result := 'Please select a video file before playing'
    else if SameText(strLang, '��Ƶ���ڲ��ţ���ֹͣ���ٴβ���') then
      Result := 'Video is playing, please stop and play again'
    else if SameText(strLang, 'ѡ�񱣴���Ƶת�����Ŀ¼��') then
      Result := 'Select video save folder��'
    else if SameText(strLang, '������������Ƶ�ļ���ת��') then
      Result := 'Video files must be added before conversion'
    else if SameText(strLang, '�����ȴ�һ����Ƶ�ļ����ٽ�����Ƶ����') then
      Result := 'A video file must be opened before video split'
    else if SameText(strLang, '�����ȴ�һ����Ƶ�ļ�������Ƶ���ٽ��кϲ�') then
      Result := 'You must open a add file or multiple audio files before merging'
    else if SameText(strLang, 'ˮӡ�ļ�������Ϊ�գ��������겻��Ϊ��') then
      Result := 'Watermark file name cannot be empty and coordinates cannot be empty'
    else if SameText(strLang, '���������Ӷ����Ƶ�ļ����ٽ�������') then
      Result := 'Multiple video files must be added before connecting'
    else if SameText(strLang, '�����ȴ�һ����Ƶ�ļ�') then
      Result := 'Must be open a video file'
    else if SameText(strLang, 'ֱ�����͵�ַ����Ϊ��') then
      Result := 'Live address is must not null'
    else if SameText(strLang, '����û�з����κ� USB ����ͷ') then
      Result := ' Not find any USB Camera on PC'
  end
  else
  begin
    Result := strLang;
  end;
end;

procedure TfrmFFUI.ChangeLanguageChinese;
begin
  mniOpenFile.Caption       := '���ļ�...';
  mniOpenFolder.Caption     := '���ļ���...';
  mniOpenWebStream.Caption  := '�����紮��...';
  mniCopyDosCommand.Caption := '���Ƶ����а�';

  lblVideoFile.Caption := '���ļ�/�ļ���/���紮����';
  tsInfo.Caption       := '��Ϣ';
  tsPlay.Caption       := '����';
  tsConv.Caption       := 'ת��';
  tsSplit.Caption      := '����';
  tsMerge.Caption      := '�ϲ�';
  tsCut.Caption        := '��ȡ';
  tsLive.Caption       := 'ֱ��';
  tsConfig.Caption     := '����';

  btnVideoPlayPlay.Caption  := '����';
  btnVideoPlayPause.Caption := '��ͣ';
  btnVideoPlayStop.Caption  := 'ֹͣ';
  btnPlayUSBCamera.Caption  := '���� USB ����ͷ';

  btnAddVideoFile.Caption   := '�����ļ�';
  btnAddFolder.Caption      := '�����ļ���';
  btnDelVideoFile.Caption   := 'ɾ��';
  btnVideoConvParam.Caption := '��������';
  btnVideoStartConv.Caption := 'ת��';
  btnVideoStopConv.Caption  := 'ֹͣת��';

  lblVideoSplitTip.Caption      := '���ļ�������';
  lblVidoeSplitVideo.Caption    := '��Ƶ����';
  lblVidoeSplitAudio.Caption    := '��Ƶ����';
  lblVidoeSplitSubtitle.Caption := '��Ļ����';
  btnVideoSplit.Caption         := '����';

  lblMergeTip.Caption         := '�ļ�������';
  lblMergeVideo.Caption       := '��Ƶ����';
  btnMergeVideoAdd.Caption    := '����';
  btnMergeVideoDel.Caption    := 'ɾ��';
  lblMergeAudio.Caption       := '��Ƶ����';
  btnMergeAudioAdd.Caption    := '����';
  btnMergeAudioDel.Caption    := 'ɾ��';
  lblMergeSubtitle.Caption    := '��Ļ����';
  btnMergeSubtitleAdd.Caption := '����';
  btnMergeSubtitleDel.Caption := 'ɾ��';
  btnMerge.Caption            := '�ϲ�';
  lblMergeFormat.Caption      := '�ϲ���ʽ��';
  btnConnectMulVideo.Caption  := '���Ӷ����Ƶ';
  btnConnectMulVideo.Hint     := '�����С��Ƶ���ӳ�һ�������Ƶ�ļ�';
  chkAddWaterMark.Caption     := '����ˮӡ';
  lblWatermark.Caption        := 'ͼƬ·����';

  rgLive.Caption          := 'ֱ��Դ��';
  rgLive.Items.Strings[0] := '�����ļ�';
  rgLive.Items.Strings[1] := 'USB����ͷ';
  rgLive.Items.Strings[2] := '�� ��';
  rgLive.Items.Strings[3] := '���紮��';
  grpLiveAddress.Caption  := 'ֱ����ַ��';
  btnLive.Caption         := '��ʼֱ��';

  rgPlayUI.Caption           := '����ʱʹ�õ���Ƶ�⣺';
  rgUseGPU.Caption           := '�Ƿ�ʹ��GPU���٣�';
  rgUseGPU.Items.Strings[0]  := '��(NV GF1050�����Կ�,����>436.15)';
  rgUseGPU.Items.Strings[1]  := '��';
  lnklblHelpAccelGPU.Caption := '<a href="https://developer.nvidia.com/video-encode-decode-gpu-support-matrix">NVIDIA GPU ���ٰ���</a>';
  lnklblHelpAccelGPU.Hint    := '�鿴�Կ��Ƿ�֧�� GPU ����';

  grpVideoConv.Caption                 := '��ʽת����';
  lblConvTip.Caption                   := 'ת��Ϊ��';
  chkVideoSize.Caption                 := '������Ƶ����';
  lblVideoWidth.Caption                := '����';
  lblVideoHeight.Caption               := '�ߣ�';
  chkConvSavePath.Caption              := '����·��ͬ�ļ�';
  lblSaveVideoPath.Caption             := '·����';
  chkConvOpenSavePath.Caption          := 'ת�������򿪱���Ŀ¼';
  lblVideoInfo.Caption                 := '������Ϣ��';
  lblTitle.Caption                     := '���⣺';
  lblArtist.Caption                    := '������';
  lblGenre.Caption                     := '���ͣ�';
  lblComment.Caption                   := 'ע�ͣ�';
  btnSaveConvParamAndStartConv.Caption := '���沢��ʼת��';
  chkConvAutoSearchSubtitle.Caption    := '�Զ�������ǰĿ¼��ͬ�ļ�����Ļ�ļ�';
  btnSaveConvParam.Caption             := '����';
  btnSaveConvParamAndStartConv.Caption := '���沢��ʼת��';

  grpSplitPath.Caption         := '���뱣��·����';
  chkSplitSamePath.Caption     := '����·��ͬ�ļ�';
  lblSplitSamePath.Caption     := '·����';
  chkSplitOpenSavePath.Caption := '��������򿪱���Ŀ¼';

  rgCut.Caption             := '��ȡ���ͣ�';
  rgCut.Items[0]            := '��������Ƶ';
  rgCut.Items[1]            := 'ֻ����Ƶ';
  rgCut.Items[2]            := 'ֻ����Ƶ';
  grpCutTime.Caption        := '��ȡʱ�䣺';
  lblCutStartTime.Caption   := '��ʼʱ�䣺';
  lblCutEndTime.Caption     := '����ʱ�䣺';
  chkCutToImage.Caption     := '��ȡΪͼƬ';
  grpCutToImage.Caption     := 'ͼƬ��';
  lblCutImageFormat.Caption := 'ͼƬ��ʽ��';
  btnCut.Caption            := '��ȡ';

  grpMergePath.Caption         := '�ϲ�����·����';
  chkMergeSamePath.Caption     := '����·��ͬ�ļ�';
  lblMergeSamePath.Caption     := '·����';
  chkMergeOpenSavePath.Caption := '�ϲ������򿪱���Ŀ¼';
  lblMergeFormat.Caption       := '�ϲ���ĸ�ʽ��';

  grpCutConfig.Caption        := '��ȡ����·����';
  chkCutSamePath.Caption      := '����·��ͬ�ļ�';
  lblCutVideoSavePath.Caption := '·����';
  chkCutOpenSavePath.Caption  := '��ȡ�����򿪱���Ŀ¼';

  rgLanguageUI.Caption := '�������ԣ�';
end;

procedure TfrmFFUI.ChangeLanguageEnglish;
begin
  mniOpenFile.Caption       := 'Open file...';
  mniOpenFolder.Caption     := 'Open folder...';
  mniOpenWebStream.Caption  := 'Open stream...';
  mniCopyDosCommand.Caption := 'Copy to clipbrd';

  lblVideoFile.Caption := 'Open File/Folder/Stream:';
  tsInfo.Caption       := 'Info';
  tsPlay.Caption       := 'Play';
  tsConv.Caption       := 'Conv';
  tsSplit.Caption      := 'Split';
  tsMerge.Caption      := 'Merge';
  tsCut.Caption        := 'Cut';
  tsLive.Caption       := 'Live';
  tsConfig.Caption     := 'Config';

  btnVideoPlayPlay.Caption  := 'Play';
  btnVideoPlayPause.Caption := 'Pause';
  btnVideoPlayStop.Caption  := 'Stop';
  btnPlayUSBCamera.Caption  := 'Play USB Camera';

  btnAddVideoFile.Caption   := 'Add File';
  btnAddFolder.Caption      := 'Add Folder';
  btnDelVideoFile.Caption   := 'Delete';
  btnVideoConvParam.Caption := 'Param config';
  btnVideoStartConv.Caption := 'Convert';
  btnVideoStopConv.Caption  := 'Stop convert';

  lblVideoSplitTip.Caption      := 'File include:';
  lblVidoeSplitVideo.Caption    := 'Video:';
  lblVidoeSplitAudio.Caption    := 'Audio:';
  lblVidoeSplitSubtitle.Caption := 'Subtitle:';
  btnVideoSplit.Caption         := 'Split';

  lblMergeTip.Caption         := 'File include:';
  lblMergeVideo.Caption       := 'Video stream:';
  btnMergeVideoAdd.Caption    := 'Add';
  btnMergeVideoDel.Caption    := 'Del';
  lblMergeAudio.Caption       := 'Audio stream:';
  btnMergeAudioAdd.Caption    := 'Add';
  btnMergeAudioDel.Caption    := 'Del';
  lblMergeSubtitle.Caption    := 'Subtitle stream:';
  btnMergeSubtitleAdd.Caption := 'Add';
  btnMergeSubtitleDel.Caption := 'Del';
  btnMerge.Caption            := 'Merge';
  lblMergeFormat.Caption      := 'Merge format:';
  btnConnectMulVideo.Caption  := 'Connect videos';
  btnConnectMulVideo.Hint     := 'Connect multiple small videos into a large video file';
  chkAddWaterMark.Caption     := 'Add watermark';
  lblWatermark.Caption        := 'Image path:';

  rgCut.Caption             := 'Cut type:';
  rgCut.Items[0]            := 'All';
  rgCut.Items[1]            := 'Only video';
  rgCut.Items[2]            := 'Only audio';
  grpCutTime.Caption        := 'Cut time:';
  lblCutStartTime.Caption   := 'Start time:';
  lblCutEndTime.Caption     := 'End   time:';
  chkCutToImage.Caption     := 'Cut to image';
  grpCutToImage.Caption     := 'Image:';
  lblCutImageFormat.Caption := 'Format:';
  btnCut.Caption            := 'Cut';

  rgLive.Caption          := 'Live source:';
  rgLive.Items.Strings[0] := 'Disk File';
  rgLive.Items.Strings[1] := 'USB Camera';
  rgLive.Items.Strings[2] := 'Desktop';
  rgLive.Items.Strings[3] := 'Web stream';
  grpLiveAddress.Caption  := 'Live address:';
  btnLive.Caption         := 'Start live';

  rgPlayUI.Caption           := 'Video library for play:';
  rgUseGPU.Caption           := 'Use GPU Accelerate:';
  rgUseGPU.Items.Strings[0]  := 'Yes(NV GF1050 above,Drivers>436.15)';
  rgUseGPU.Items.Strings[1]  := 'No';
  lnklblHelpAccelGPU.Caption := '<a href="https://developer.nvidia.com/video-encode-decode-gpu-support-matrix">NVIDIA GPU Help</a>';
  lnklblHelpAccelGPU.Hint    := 'Check whether the graphics card supports GPU acceleration';

  grpVideoConv.Caption                 := 'Convert format:';
  lblConvTip.Caption                   := 'Convert to:';
  chkVideoSize.Caption                 := 'Same Video Size';
  lblVideoWidth.Caption                := 'W:';
  lblVideoHeight.Caption               := 'H:';
  chkConvSavePath.Caption              := 'Save path same as file';
  lblSaveVideoPath.Caption             := 'Path:';
  chkConvOpenSavePath.Caption          := 'Open save path after finish convert';
  lblVideoInfo.Caption                 := 'Video Info:';
  lblTitle.Caption                     := 'Title:';
  lblArtist.Caption                    := 'Artist:';
  lblGenre.Caption                     := 'Genre:';
  lblComment.Caption                   := 'Comment:';
  chkConvAutoSearchSubtitle.Caption    := 'Automatically search subtitle files of the same file in the current directory';
  btnSaveConvParam.Caption             := 'Save';
  btnSaveConvParamAndStartConv.Caption := 'Save and conv';

  grpSplitPath.Caption         := 'Split save path:';
  chkSplitSamePath.Caption     := 'Save path same as file';
  lblSplitSamePath.Caption     := 'Path:';
  chkSplitOpenSavePath.Caption := 'Open save path after finish split';

  grpMergePath.Caption         := 'Merge save path:';
  chkMergeSamePath.Caption     := 'Save path same as file';
  lblMergeSamePath.Caption     := 'Path:';
  chkMergeOpenSavePath.Caption := 'Open save path after finish Merge';
  lblMergeFormat.Caption       := 'Combined format:';

  grpCutConfig.Caption        := 'Cut save path��';
  chkCutSamePath.Caption      := 'Save path same as file';
  lblCutVideoSavePath.Caption := 'Path��';
  chkCutOpenSavePath.Caption  := 'Open save path after finish cut';

  rgLanguageUI.Caption := 'Language UI:';
end;