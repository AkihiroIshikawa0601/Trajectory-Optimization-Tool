function [c,ceq] = Constraints_LPM(x,settings)
    f = settings.f;
    Constraints_InEq = settings.Constranits_InEq;
    Constraints_Eq = settings.Constranits_Eq;
        
    n_x = settings.n_x;
    N = settings.N;
    Tau = settings.Tau;
    D = settings.D;
    
    [X0, Xf, Xk, Uk, t0, tf] = x2XUT_LPM(x,settings);
    T = tf - t0;
        
    c = Constraints_InEq(X0,Xf,Xk,Uk,Tau,t0,tf,settings);
    ceq = [Constraints_Eq(X0,Xf,Xk,Uk,Tau,t0,tf,settings);
           reshape((D*[X0, Xk]')' - T/2*f(Xk,Uk,Tau,t0,tf,settings),n_x*N,1)];
end