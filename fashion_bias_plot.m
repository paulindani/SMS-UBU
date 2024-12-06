%resb=load("C:\counterfactuals-main\results_bayes2.mat");
%resfb=load("C:\counterfactuals-main\results_full_bayes3.mat");
%resnb=load("C:\counterfactuals-main\results_no_bayes2.mat");
res=load("C:\counterfactuals-main\results_fashion_multinomial_bias.mat");
%ylim([0.92,0.97])
x=log2([2e-3,(1e-3),(1e-3)/2,(1e-3)/4,(1e-3)/8,(1e-3)/16]);
figure, errorbar(x,log2(res.bias_arr(1,:)),res.bias_arr_sd(1,:),'LineWidth',2.0)
fontsize(16,"points")
xlabel("-log_2(Step size)")
ylabel("log_2(Bias of P(true class)) (test set)")
xlim([-14.5,-8.5])
hold on
errorbar(x,log2(res.bias_arr(2,:)),res.bias_arr_sd(2,:),'LineWidth',2.0)
errorbar(x,log2(res.bias_arr(3,:)),res.bias_arr_sd(3,:),'LineWidth',2.0)
errorbar(x,log2(res.bias_arr(4,:)),res.bias_arr_sd(4,:),'LineWidth',2.0)
errorbar(x,log2(res.bias_arr(5,:)),res.bias_arr_sd(5,:),'LineWidth',2.0)
legend("SG-BAOAB", "SMS-BAOAB", "SG-UBU", "SMS-UBU", "SG-HMC")


res=load("C:\counterfactuals-main\results_fashion_multinomial.mat");

x=log2([2e-3,(1e-3),(1e-3)/2,(1e-3)/4,(1e-3)/8,(1e-3)/16]);
figure, errorbar(x,res.nll_arr(1,:),res.nll_arr_sd(1,:),'LineWidth',2.0)
fontsize(16,"points")
xlabel("-log_2(Step size)")
ylabel("Negative Log Likelihood (test set)")
xlim([-14.5,-8.5])
hold on
errorbar(x,res.nll_arr(2,:),res.nll_arr_sd(2,:),'LineWidth',2.0)
errorbar(x,res.nll_arr(3,:),res.nll_arr_sd(3,:),'LineWidth',2.0)
errorbar(x,res.nll_arr(4,:),res.nll_arr_sd(4,:),'LineWidth',2.0)
errorbar(x,res.nll_arr(5,:),res.nll_arr_sd(5,:),'LineWidth',2.0)
legend("SG-BAOAB", "SMS-BAOAB", "SG-UBU", "SMS-UBU", "SG-HMC")


x=log2([2e-3,(1e-3),(1e-3)/2,(1e-3)/4,(1e-3)/8,(1e-3)/16]);
figure, errorbar(x,res.ace_arr(1,:),res.ace_arr_sd(1,:),'LineWidth',2.0)
fontsize(16,"points")
xlabel("-log_2(Step size)")
ylabel("Adaptive Calibration Error (test set)")
xlim([-14.5,-8.5])
hold on
errorbar(x,res.ace_arr(2,:),res.ace_arr_sd(2,:),'LineWidth',2.0)
errorbar(x,res.ace_arr(3,:),res.ace_arr_sd(3,:),'LineWidth',2.0)
errorbar(x,res.ace_arr(4,:),res.ace_arr_sd(4,:),'LineWidth',2.0)
errorbar(x,res.ace_arr(5,:),res.ace_arr_sd(5,:),'LineWidth',2.0)
legend("SG-BAOAB", "SMS-BAOAB", "SG-UBU", "SMS-UBU", "SG-HMC")

x=log2([2e-3,(1e-3),(1e-3)/2,(1e-3)/4,(1e-3)/8,(1e-3)/16]);
figure, errorbar(x,res.rps_arr(1,:),res.rps_arr_sd(1,:),'LineWidth',2.0)
fontsize(16,"points")
xlabel("-log_2(Step size)")
ylabel("Ranked Probability Score (test set)")
xlim([-14.5,-8.5])
hold on
errorbar(x,res.rps_arr(2,:),res.rps_arr_sd(2,:),'LineWidth',2.0)
errorbar(x,res.rps_arr(3,:),res.rps_arr_sd(3,:),'LineWidth',2.0)
errorbar(x,res.rps_arr(4,:),res.rps_arr_sd(4,:),'LineWidth',2.0)
errorbar(x,res.rps_arr(5,:),res.rps_arr_sd(5,:),'LineWidth',2.0)
legend("SG-BAOAB", "SMS-BAOAB", "SG-UBU", "SMS-UBU", "SG-HMC")

x=log2([2e-3,(1e-3),(1e-3)/2,(1e-3)/4,(1e-3)/8,(1e-3)/16]);
figure, errorbar(x,res.acc_arr(1,:),res.acc_arr_sd(1,:),'LineWidth',2.0)
fontsize(16,"points")
xlabel("-log_2(Step size)")
ylabel("Accuracy (test set)")
xlim([-14.5,-8.5])
hold on
errorbar(x,res.acc_arr(2,:),res.acc_arr_sd(2,:),'LineWidth',2.0)
errorbar(x,res.acc_arr(3,:),res.acc_arr_sd(3,:),'LineWidth',2.0)
errorbar(x,res.acc_arr(4,:),res.acc_arr_sd(4,:),'LineWidth',2.0)
errorbar(x,res.acc_arr(5,:),res.acc_arr_sd(5,:),'LineWidth',2.0)
legend("SG-BAOAB", "SMS-BAOAB", "SG-UBU", "SMS-UBU", "SG-HMC")