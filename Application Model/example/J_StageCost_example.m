function J_StageCost = J_StageCost_example(Xk,Uk,Tau,t0,tf,settings)
%% J_StageCost関数の説明
%引数：
% Xk(n_x×N, 初期・終端時刻を除く状態量ベクトルをN個並べた行列)
% Uk(m×N, 制御量ベクトルをN個並べた行列)
% Tau(1×N, 無次元化されたステップ時刻[-1,1])
% t0(スカラー値, 初期時刻)
% tf(スカラー値, 終端時刻)
% settings(設定値を格納する構造体)
%出力：
% J_StageCost(1×N, 各i列(i=1～N)がステージiにおけるStage Cost値を返すベクトル)

%% 関数定義
    %J_StageCost = 1/2*Uk.^2;
    J_StageCost = 1/2*abs(Uk);
end
