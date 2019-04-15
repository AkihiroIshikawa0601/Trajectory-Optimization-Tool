clear all force
addpath(genpath('D:\Google �h���C�u\����\Pseudospectral Collocation'))

%% �ݒ�t�@�C���ǂݍ���
ApplicationModel = 'example';
open(strcat('settings_',ApplicationModel));
run(strcat('settings_',ApplicationModel));

%% �œK����@�̏����ݒ�
run(strcat('settings_',settings.Method));

%% fmincon�̎��s
fminconSettings.solver = 'fmincon';
fminconSettings.objective = @(x) J(x,settings);
fminconSettings.A_ = [];
fminconSettings.b_ = [];
fminconSettings.x0 = zeros(1,settings.n_x*(settings.N+1) + settings.m*settings.N + 2);
fminconSettings.Aeq = [];
fminconSettings.beq = [];
fminconSettings.lb = [];
fminconSettings.ub = [];
fminconSettings.nonlcon = @(x) Constraints(x,settings);
fminconSettings.options = optimoptions(@fmincon,'Algorithm','sqp',...
                                        'Display','iter-detailed',...
                                        'ConstraintTolerance',1e-7,...
                                        'StepTolerance',1e-15,...                                
                                        'MaxIterations',1e4,...
                                        'MaxFunctionEvaluations',1e15,...
                                        'UseParallel',true);
x = fmincon(fminconSettings);

%% �œK�l�̊i�[
[X0_opt, Xf_opt, Xk_opt, Uk_opt, t0_opt, tf_opt] = x2XUT_LPM(x,settings);
J_opt = J(x,settings)

%% Save Result
date = datestr(now,'yyyymmdd__HHMMSS');
folder_name = strcat('Result',strcat(strcat('/',date),strcat('__',ApplicationModel)));
mkdir(folder_name);

save(strcat(folder_name,'/workspace.mat'));

%% Plot& Save
run(strcat('plot_',ApplicationModel));
