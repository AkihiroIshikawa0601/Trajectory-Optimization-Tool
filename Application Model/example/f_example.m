function X_dot = f_example(Xk,Uk,Tau,t0,tf,settings)
%% f�֐��̐���
%�����F
% Xk(n_x�~N, �����E�I�[������������ԗʃx�N�g����N���ׂ��s��)
% Uk(m�~N, ����ʃx�N�g����N���ׂ��s��)
% Tau(1�~N, �����������ꂽ�X�e�b�v����[-1,1])
% t0(�X�J���[�l, ��������)
% tf(�X�J���[�l, �I�[����)
% settings(�ݒ�l���i�[����\����)
%�o�́F
% X_dot(n_x�~N, �ei��(i=1�`N)���X�e�[�Wi�ɂ������ԗʂ�1�K������Ԃ��s��)

%% �֐���`
    X_dot = [Xk(2,:); Uk];
end