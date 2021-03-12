%--------------------------------------------------------------------------
% Reinforcement Learning for Valve Control. V.5.4: 11-Mar. 11pm
% Author:       Rajesh Siraskar
% e-mail:       rajeshsiraskar@gmail.com; siraskar@coventry.ac.uk
% University:   Coventry University, UK, MTech Automotive Engineering
%
% Code:         Main script. Loads and executes the following files
%               This is a "headless" execution and mainly for
%               reproducibility tests
%               1. code_DDPG_Training.m RL Controller training using DDPG algorithm
%               2. code_Experimental_Setup.m Validation code
%               3. code_SA_TF_Estimator.m: Stability Analysis TF estimator
%               4. code_SA_Utilities.m: Generates Stability plots from
%               'data_SA_TransferFunctions.mat'
% -------------------------------------------------------------------------


display("----- Begin run -----"); 
display("Reinforcement Learning (RL) for Valve Control");
display("Begin training a RL agent for control of non-linear valve");
code_DDPG_Training;
display("Verify the RL agent works. Compare against PID control");
code_Experimental_Setup;
display("Stability Analysis: Estimate TF");
code_SA_TF_Estimator;
display("Stability Analysis: Plots");
code_SA_Utilities;
display("RL controller model saved and Stability Analysis plots saved in Results folder.");
display("----- End run -----"); 

