function Constraints_InEq = Constraints_InEq_example(X0,Xf,Xk,Uk,Tau,t0,tf,settings)
%% Constraints_InEq�֐��̐���
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
% Constraints_InEq(�C�Ӂ~1, �e�s���œK���ɂ����Ė������ׂ��s�����������(�l�����ɂȂ�ׂ�����)���L�q)

%% �֐���`
    u_min = settings.u_min;
    u_max = settings.u_max;
    
    Constraints_Uk = zeros(2*size(Uk,2),1);
    for k = 1:size(Uk,2)
        Constraints_Uk((k-1)*2+1) = Uk(k) - u_max;
        Constraints_Uk((k-1)*2+2) = -Uk(k) + u_min;
    end
    Constraints_InEq = Constraints_Uk;
end