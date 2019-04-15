%% 時刻設定
settings.t0 = 0;                     %初期時刻[s]
settings.tf = 10;                    %終端時刻[s]

%% 初期値設定
settings.x_0 = [-10; 0];             %状態量初期値([位置(m); 速度(m/s)])
settings.x_f = [0; 0];               %状態量終端値([位置(m); 速度(m/s)])
settings.n_x = length(settings.x_0); %状態量数
settings.m = 1;                      %制御量数
settings.u_min = -1;                 %最小制御量(m/s^2)
settings.u_max = 1;                  %最大制御量(m/s^2)

%% 関数引渡し
settings.f = @f_example;
settings.J_StageCost = @J_StageCost_example;
settings.J_TerminalCost = @J_TerminalCost_example;
settings.Constranits_InEq = @Constraints_InEq_example;
settings.Constranits_Eq = @Constraints_Eq_example;

%% 最適化パラメータ設定
settings.N = 30; %ステップ数
settings.Method = 'LPM'; %最適化手法選択