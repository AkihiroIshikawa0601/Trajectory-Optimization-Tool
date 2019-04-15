function J = J_LPM(x,settings)
    J_StageCost = settings.J_StageCost;
    J_TerminalCost = settings.J_TerminalCost;
        
    Tau = settings.Tau;
    Wk = settings.Wk;
    
    [X0, Xf, Xk, Uk, t0, tf] = x2XUT_LPM(x,settings);
    T = tf - t0;
 
    J = J_TerminalCost(X0,Xf,t0,tf,settings) + T/2*J_StageCost(Xk,Uk,Tau,t0,tf,settings)*Wk';
end

