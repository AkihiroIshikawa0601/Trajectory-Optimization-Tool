%% node‚Ìì¬
syms z
settings.Tau = sort(double(vpa(real(solve(legendreP(settings.N,z),'MaxDegree', settings.N)))'));
settings.Ts = [-1, settings.Tau, 1];

%% d‚İŒW”‚ÌŒvZ
settings.Wk = 2*(ones(1,settings.N)-(settings.Tau).^2)./((settings.N*legendreP(settings.N-1,settings.Tau)).^2);

%% ”÷•ªŒW”s—ñ‚ÌŒvZ
P_N = legendreP(settings.N,z);
dP_N = diff(P_N,z,1);
ddP_N = diff(P_N,z,2);

settings.D = zeros(settings.N,settings.N+1);
for k = 1:settings.N
    for i = 1:settings.N+1
        if i == 1
            settings.D(k,i) = subs(dP_N,settings.Tau(k))/subs(P_N,-1);
        elseif i == k+1
            settings.D(k,i) = (2*subs(dP_N,settings.Tau(i-1)) + (settings.Tau(i-1)+1)*subs(ddP_N,settings.Tau(i-1)))...
                              /(2*(subs(P_N,settings.Tau(i-1)) + (settings.Tau(i-1)+1)*subs(dP_N,settings.Tau(i-1))));
        else
            settings.D(k,i) = ((settings.Tau(k)+1)*subs(dP_N,settings.Tau(k)))...
                              /((settings.Tau(k)-settings.Tau(i-1))*(subs(P_N,settings.Tau(i-1)) + (settings.Tau(i-1)+1)*subs(dP_N,settings.Tau(i-1))));
        end
    end        
end

%% ŠÖ”ˆø“n‚µ
J = @J_LPM;
Constraints = @Constraints_LPM;