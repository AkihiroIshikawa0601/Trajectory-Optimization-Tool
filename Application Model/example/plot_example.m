%% Plot
figure(1)
plot(settings.Ts,[X0_opt(1,:), Xk_opt(1,:), Xf_opt(1,:)])
hold on
plot(settings.Ts,[X0_opt(2,:), Xk_opt(2,:), Xf_opt(2,:)])
xlabel('t')
ylabel('x, v')
legend('x','v')

figure(2)
plot(settings.Ts(2:end-1),Uk_opt)
xlim([-1,1])
ylim([-1,1])
xlabel('t')
ylabel('u')

%% Save
saveas(figure(1),strcat(folder_name,'/State Trajectories.png'));
close(figure(1));

saveas(figure(2),strcat(folder_name,'/Control Profiles.png'));
close(figure(2));