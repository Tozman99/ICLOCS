% main_BangBang - Main script to solve the Optimal Control Problem
%
% BangBang Control (Double Integrator Minimum Time Repositioning) Problem
%
% The problem was adapted from Example 4.11 from
% J. Betts, "Practical Methods for Optimal Control and Estimation Using Nonlinear Programming: Second Edition," Advances in Design and Control, Society for Industrial and Applied Mathematics, 2010.
%
% Copyright (C) 2019 Yuanbo Nie, Omar Faqir, and Eric Kerrigan. All Rights Reserved.
% The contribution of Paola Falugi, Eric Kerrigan and Eugene van Wyk for the work on ICLOCS Version 1 (2010) is kindly acknowledged.
% This code is published under the MIT License.
% Department of Aeronautics and Department of Electrical and Electronic Engineering,
% Imperial College London London  England, UK 
% ICLOCS (Imperial College London Optimal Control) Version 2.5 
% 1 Aug 2019
% iclocs@imperial.ac.uk


%--------------------------------------------------------

% Ensure the ICLOCS folders are on the MATLAB path so that helper
% functions (e.g. ``solveMyProblem``) can be located when the example is
% executed directly with ``run`` from a fresh MATLAB session. This keeps
% the example self-contained for users running it in MATLAB Online where
% the project path may not have been added yet.
scriptDir   = fileparts(mfilename('fullpath'));
projectRoot = fileparts(fileparts(fileparts(scriptDir)));
addpath(genpath(projectRoot));


%% Solve with mesh refinement
clear all;close all;format compact;
[problem,guess]=BangBang;          % Fetch the problem definition
options= problem.settings(3000);                  % Get options and solver settings 
[solution,MRHistory]=solveMyProblem( problem,guess,options);
genSolutionPlots(options, solution);


