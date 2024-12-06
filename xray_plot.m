% res_b=load("C:\counterfactuals-main\results_xray_bayes.mat");
% res_swa=load("C:\counterfactuals-main\results_xray_swa.mat");
% res_nb=load("C:\counterfactuals-main\results_xray_no_bayes.mat");

res_b=load("C:\counterfactuals-main\results_xray_bayes_big1.mat");
res_swa=load("C:\counterfactuals-main\results_xray_swa_big1.mat");
res_nb=load("C:\counterfactuals-main\results_xray_no_bayes_big1.mat");


figure, errorbar(2.^(0:4),res_nb.acc,res_nb.acc_std,'LineWidth',2)
hold on
errorbar(2.^(0:4),res_swa.acc,res_swa.acc_std,'LineWidth',2)
errorbar(2.^(0:4),res_b.acc,res_b.acc_std,'LineWidth',2)

xlim([0,17])
%ylim([0.92,0.97])
fontsize(16,"points")
xlabel("Ensemble size")
ylabel("Accuracy")
legend("Standard Training", "Stochastic Weight Averaging", "Bayesian Neural Network")





figure, errorbar(2.^(0:4),res_nb.rps,res_nb.rps_std,'LineWidth',2)
hold on
errorbar(2.^(0:4),res_swa.rps,res_swa.rps_std,'LineWidth',2)
errorbar(2.^(0:4),res_b.rps,res_b.rps_std,'LineWidth',2)

xlim([0,17])
%ylim([0.94,0.97])
fontsize(16,"points")
xlabel("Ensemble size")
ylabel("Ranked Probability Score")
legend("Standard Training", "Stochastic Weight Averaging", "Bayesian Neural Network")

figure, errorbar(2.^(0:4),res_nb.ace,res_nb.ace_std,'LineWidth',2)
hold on
errorbar(2.^(0:4),res_swa.ace,res_swa.ace_std,'LineWidth',2)
errorbar(2.^(0:4),res_b.ace,res_b.ace_std,'LineWidth',2)

xlim([0,17])
%ylim([0.003,0.045])
fontsize(16,"points")
xlabel("Ensemble size")
ylabel("Adaptive Calibration Error")
legend("Standard Training", "Stochastic Weight Averaging", "Bayesian Neural Network")


figure, errorbar(2.^(0:4),res_nb.nll,res_nb.nll_std,'LineWidth',2)
hold on
errorbar(2.^(0:4),res_swa.nll,res_swa.nll_std,'LineWidth',2)
errorbar(2.^(0:4),res_b.nll,res_b.nll_std,'LineWidth',2)

xlim([0,17])
%ylim([0.003,0.045])
fontsize(16,"points")
xlabel("Ensemble size")
ylabel("Negative Log Likelihood")
legend("Standard Training", "Stochastic Weight Averaging", "Bayesian Neural Network")


