function Constraints_Eq = Constraints_Eq_example(X0,Xf,Xk,Uk,Tau,t0,tf,settings)
%% Constraints_Eq関数の説明
%引数：
% X0(n_x×1, 初期時刻状態量ベクトル)
% Xf(n_x×1, 終端時刻状態量ベクトル)
% Xk(n_x×N, 初期・終端時刻を除く状態量ベクトルをN個並べた行列)
% Uk(m×N, 制御量ベクトルをN個並べた行列)
% Tau(1×N, 無次元化されたステップ時刻[-1,1])
% t0(スカラー値, 初期時刻)
% tf(スカラー値, 終端時刻)
% settings(設定値を格納する構造体)
%出力：
% Constraints_Eq(任意×1, 各行が最適化において満たすべき等式制約条件(値が0になるべき条件)を記述)

%% 関数定義
    Constraints_t0 = t0 - settings.t0;
    Constraints_tf = tf - settings.tf;
    Constraints_X0 = X0 - settings.x_0;
    Constraints_Xf = Xf - settings.x_f;

    Constraints_Eq = [Constraints_t0; Constraints_tf; Constraints_X0; Constraints_Xf];
end