function J_StageCost = J_StageCost_example(Xk,Uk,Tau,t0,tf,settings)
%% J_StageCost�֐��̐���
%�����F
% Xk(n_x�~N, �����E�I�[������������ԗʃx�N�g����N���ׂ��s��)
% Uk(m�~N, ����ʃx�N�g����N���ׂ��s��)
% Tau(1�~N, �����������ꂽ�X�e�b�v����[-1,1])
% t0(�X�J���[�l, ��������)
% tf(�X�J���[�l, �I�[����)
% settings(�ݒ�l���i�[����\����)
%�o�́F
% J_StageCost(1�~N, �ei��(i=1�`N)���X�e�[�Wi�ɂ�����Stage Cost�l��Ԃ��x�N�g��)

%% �֐���`
    %J_StageCost = 1/2*Uk.^2;
    J_StageCost = 1/2*abs(Uk);
end
