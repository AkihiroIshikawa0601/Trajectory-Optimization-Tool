function Constraints_InEq = Constraints_InEq_example(X0,Xf,Xk,Uk,Tau,t0,tf,settings)
%% Constraints_InEq関数の説明
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
% Constraints_InEq(任意×1, 各行が最適化において満たすべき不等式制約条件(値が負になるべき条件)を記述)

%% 関数定義
    u_min = settings.u_min;
    u_max = settings.u_max;
    
    Constraints_Uk = zeros(2*size(Uk,2),1);
    for k = 1:size(Uk,2)
        Constraints_Uk((k-1)*2+1) = Uk(k) - u_max;
        Constraints_Uk((k-1)*2+2) = -Uk(k) + u_min;
    end
    Constraints_InEq = Constraints_Uk;
end