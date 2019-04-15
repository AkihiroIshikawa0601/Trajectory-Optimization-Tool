function X_dot = f_example(Xk,Uk,Tau,t0,tf,settings)
%% f関数の説明
%引数：
% Xk(n_x×N, 初期・終端時刻を除く状態量ベクトルをN個並べた行列)
% Uk(m×N, 制御量ベクトルをN個並べた行列)
% Tau(1×N, 無次元化されたステップ時刻[-1,1])
% t0(スカラー値, 初期時刻)
% tf(スカラー値, 終端時刻)
% settings(設定値を格納する構造体)
%出力：
% X_dot(n_x×N, 各i列(i=1～N)がステージiにおける状態量の1階微分を返す行列)

%% 関数定義
    X_dot = [Xk(2,:); Uk];
end