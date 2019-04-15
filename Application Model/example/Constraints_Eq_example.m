function Constraints_Eq = Constraints_Eq_example(X0,Xf,Xk,Uk,Tau,t0,tf,settings)
%% Constraints_Eq�֐��̐���
%�����F
% X0(n_x�~1, ����������ԗʃx�N�g��)
% Xf(n_x�~1, �I�[������ԗʃx�N�g��)
% Xk(n_x�~N, �����E�I�[������������ԗʃx�N�g����N���ׂ��s��)
% Uk(m�~N, ����ʃx�N�g����N���ׂ��s��)
% Tau(1�~N, �����������ꂽ�X�e�b�v����[-1,1])
% t0(�X�J���[�l, ��������)
% tf(�X�J���[�l, �I�[����)
% settings(�ݒ�l���i�[����\����)
%�o�́F
% Constraints_Eq(�C�Ӂ~1, �e�s���œK���ɂ����Ė������ׂ������������(�l��0�ɂȂ�ׂ�����)���L�q)

%% �֐���`
    Constraints_t0 = t0 - settings.t0;
    Constraints_tf = tf - settings.tf;
    Constraints_X0 = X0 - settings.x_0;
    Constraints_Xf = Xf - settings.x_f;

    Constraints_Eq = [Constraints_t0; Constraints_tf; Constraints_X0; Constraints_Xf];
end