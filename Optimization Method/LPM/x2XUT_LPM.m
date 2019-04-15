function [X0, Xf, Xk, Uk, t0, tf] = x2XUT_LPM(x,settings)
    m = settings.m;
    N = settings.N;
    n_x = settings.n_x;
    f = settings.f;
    Tau = settings.Tau;
    Wk = settings.Wk;
    
    if length(x) == n_x + n_x*N + m*N + 2
        X0 = reshape(x(1:n_x),n_x,1);
        Xk = reshape(x(n_x+1:n_x+n_x*N),n_x,N);
        Uk = reshape(x(n_x+n_x*N+1:n_x+n_x*N+m*N),m,N);
        t0 = x(n_x+n_x*N+m*N+1);
        tf = x(n_x+n_x*N+m*N+2);
        
        T = tf - t0;
        Xf = X0 + T/2*f(Xk,Uk,Tau,t0,tf,settings)*Wk';
    else
        error('x0 is wrong.')
    end
end

