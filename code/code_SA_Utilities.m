% --------------------------------------------------------------------------
% Reinforcement Learning for Valve Control. V.5.4: 11-Mar. 11pm
% Author:       Rajesh Siraskar
% e-mail:       rajeshsiraskar@gmail.com; siraskar@coventry.ac.uk
% University:   Coventry University, UK, MTech Automotive Engineering
%
% Code:         Visualization plot for Stability Analysis
% -------------------------------------------------------------------------

warning ('off','all');

display ("Transfer Function data loaded");
load('..\data\data_SA_TransferFunctions.mat');

step(TF_ClosedLoop_TD); title ('Closed Loop: Step Response');
saveas(gcf, '..\results\Closed_Loop_Step_Response.png');

bode(TF_OpenLoop_TD); title ('Open Loop: Bode plot');
saveas(gcf, '..\results\Open_Loop_Bode_Plot.png');

margin(TF_OpenLoop_TD);
saveas(gcf, '..\results\Open_Loop_Stability_Margin_Plot.png');

pzmap(TF_OpenLoop_TD); title ('Open Loop: Pole-Zero map');
saveas(gcf, '..\results\Open_Loop_Pole_Zero_Map.png');

nyquist(TF_OpenLoop_TD); title ('Open Loop: Nyquist plot');
saveas(gcf, '..\results\Open_Loop_Nyquist_Plot.png');

margin(TF_ClosedLoop_TD); 
saveas(gcf, '..\results\Closed_Loop_Stability_Margin_Plot.png');

display ("Open Loop and Closed Loop Stability Analysis plots saved in Results folder");
