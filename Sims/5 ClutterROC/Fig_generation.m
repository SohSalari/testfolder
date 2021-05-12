clc;
clear all;
close all;
%--------------------------------------------------------------------------

% load('320M+16SNR+ ROC.mat');
% for kkk = 2:17
%     AlgI_AllCo(kkk)    = 0.333 * ( AlgI_AllCorrect(kkk-1) + AlgI_AllCorrect(kkk) + AlgI_AllCorrect(kkk+1) );
%     AlgI_NoFal(kkk)    = 0.333 * ( AlgI_NoFalseAlarm(kkk-1) +  AlgI_NoFalseAlarm(kkk) + AlgI_NoFalseAlarm(kkk+1) ) ;
% end
% AlgI_AllCo(1) = AlgI_AllCorrect(1);
% AlgI_NoFal(1) = AlgI_NoFalseAlarm(1);
% AlgI_AllCo(18) = 0.005;
% AlgI_NoFal(18) = 0.995;
% plot(1.02-AlgI_NoFal,AlgI_AllCo,'-','Color','k','LineWidth',1.5);
% hold on;

load('288M+16SNR+ ROC.mat');
for kkk = 2:16
    AlgI_AllCo(kkk)    = 0.333 * ( AlgI_AllCorrect(kkk-1) + AlgI_AllCorrect(kkk) + AlgI_AllCorrect(kkk+1) );
    AlgI_NoFal(kkk)    = 0.333 * ( AlgI_NoFalseAlarm(kkk-1) +  AlgI_NoFalseAlarm(kkk) + AlgI_NoFalseAlarm(kkk+1) ) ;
end
AlgI_AllCo(1) = AlgI_AllCorrect(1);
AlgI_NoFal(1) = AlgI_NoFalseAlarm(1);
AlgI_AllCo(17) = 0.005;
AlgI_NoFal(17) = 0.997;
plot(1.000-AlgI_NoFal,AlgI_AllCo-0.003,'- ','Color','k','LineWidth',1.5);
hold on;

load('224M+16SNR+ ROC.mat');
for kkk = 2:16
    AlgI_AllCo(kkk)    = 0.333 * ( AlgI_AllCorrect(kkk-1) + AlgI_AllCorrect(kkk) + AlgI_AllCorrect(kkk+1) );
    AlgI_NoFal(kkk)    = 0.333 * ( AlgI_NoFalseAlarm(kkk-1) +  AlgI_NoFalseAlarm(kkk) + AlgI_NoFalseAlarm(kkk+1) ) ;
end
AlgI_AllCo(1) = AlgI_AllCorrect(1);
AlgI_NoFal(1) = AlgI_NoFalseAlarm(1);
AlgI_AllCo(17) = 0.004;
AlgI_NoFal(17) = 0.995;
plot(1.000-AlgI_NoFal,AlgI_AllCo-0.007,'-- ','Color','k','LineWidth',1.5);
hold on;

load('160M+16SNR+ ROC.mat');
for kkk = 3:16
    AlgI_AllCo(kkk)    = 0.25 * ( AlgI_AllCorrect(kkk-1) + AlgI_AllCorrect(kkk-2) + AlgI_AllCorrect(kkk) + AlgI_AllCorrect(kkk+1) );
    AlgI_NoFal(kkk)    = 0.25 * ( AlgI_NoFalseAlarm(kkk-1) +   AlgI_NoFalseAlarm(kkk-2) + AlgI_NoFalseAlarm(kkk) + AlgI_NoFalseAlarm(kkk+1) ) ;
end
AlgI_AllCo(1) = AlgI_AllCorrect(1);
AlgI_NoFal(1) = AlgI_NoFalseAlarm(1);
AlgI_AllCo(2) = AlgI_AllCorrect(2);
AlgI_NoFal(2) = AlgI_NoFalseAlarm(2);
AlgI_AllCo(17) = 0.003;
AlgI_NoFal(17) = 0.992;
plot(1.0-AlgI_NoFal,AlgI_AllCo-0.007,'-.','Color','k','LineWidth',1.5);
hold on;

load('128M+16SNR+ ROC.mat');
for kkk = 3:17
    AlgI_AllCo(kkk)    = 0.25 * ( AlgI_AllCorrect(kkk-1) + AlgI_AllCorrect(kkk-2) + AlgI_AllCorrect(kkk) + AlgI_AllCorrect(kkk+1) );
    AlgI_NoFal(kkk)    = 0.25 * ( AlgI_NoFalseAlarm(kkk-1) +   AlgI_NoFalseAlarm(kkk-2) + AlgI_NoFalseAlarm(kkk) + AlgI_NoFalseAlarm(kkk+1) ) ;
end
AlgI_AllCo(1) = AlgI_AllCorrect(1);
AlgI_NoFal(1) = AlgI_NoFalseAlarm(1);
AlgI_AllCo(2) = AlgI_AllCorrect(2);
AlgI_NoFal(2) = AlgI_NoFalseAlarm(2);
AlgI_AllCo(18) = 0.003;
AlgI_NoFal(18) = 0.992;
plot(1.0-AlgI_NoFal,AlgI_AllCo-0.007,'- +','Color','k','LineWidth',1.5);
hold off;

axis([0 1.0 0 1.0]);
legend('100% Samples (No CS)', '35% Samples','25% Samples','15% Samples');
xlabel('Probability of False Alarm, P_{FA}');
ylabel('Probability of Dtection, P_D');

