%% �����ݒ�
settings.t0 = 0;                     %��������[s]
settings.tf = 10;                    %�I�[����[s]

%% �����l�ݒ�
settings.x_0 = [-10; 0];             %��ԗʏ����l([�ʒu(m); ���x(m/s)])
settings.x_f = [0; 0];               %��ԗʏI�[�l([�ʒu(m); ���x(m/s)])
settings.n_x = length(settings.x_0); %��ԗʐ�
settings.m = 1;                      %����ʐ�
settings.u_min = -1;                 %�ŏ������(m/s^2)
settings.u_max = 1;                  %�ő吧���(m/s^2)

%% �֐����n��
settings.f = @f_example;
settings.J_StageCost = @J_StageCost_example;
settings.J_TerminalCost = @J_TerminalCost_example;
settings.Constranits_InEq = @Constraints_InEq_example;
settings.Constranits_Eq = @Constraints_Eq_example;

%% �œK���p�����[�^�ݒ�
settings.N = 30; %�X�e�b�v��
settings.Method = 'LPM'; %�œK����@�I��