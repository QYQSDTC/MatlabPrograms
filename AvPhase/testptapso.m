%% Test PTAPSO
% Standard way to run ptapso.
% (1) Set up the fitness function. We are using the supplied test fitness
% function PSOTESTFUNC.
nDim = 10;
fitFuncParams = struct('rmin', -5*ones(1, nDim),...
                       'rmax', 5*ones(1, nDim) ...
                       );
fitFuncHandle = @(x) ptapsotestfunc(x,fitFuncParams);
%%
rng('default');
% (2) Run PTAPSO with default PSO parameter values
disp('Running PTAPSO in the normal way');
returnData = ptapso(fitFuncHandle,nDim);
disp(['Best value found ', num2str(returnData.bestSNR)]);
disp(['Best location ', num2str(returnData.bestLocation)]);
disp('--------------------');
%%
% (3) This is an example that shows how to override default values of the
% PSO parameters. Setting values to [] means use the default values.
disp('Running PTAPSO with non-default PSO parameter values');
rng('default');
psoParams = struct('popSize', [],...
                   'maxSteps', 100,...
                   'c1',[], 'c2', [],...
                   'maxInitialVelocity', [],...
                   'maxVelocity', 0.5,...
                   'startInertia', [],...
                   'endInertia', [],...
                   'boundaryCond','',...
                   'fminMaxFunEvals',200 ...
               );
returnData = ptapso(fitFuncHandle,nDim,psoParams);
disp(['Best value found ', num2str(returnData.bestSNR)]);
disp(['Best location ', num2str(returnData.bestLocation)]);
disp('--------------------');
%%
% (4) Illustrating the use of special boundary conditions. Any special
% boundary condition must be handled by the fitness function. For the
% fitness function used, there is no special handling of any boundary
% condition and, hence, there is no effect on results.
disp('Running PTAPSO with no local minimization of gbest');
rng('default');
psoParams = struct('popSize', [],...
                   'maxSteps', [],...
                   'c1',[], 'c2', [],...
                   'maxInitialVelocity', [],...
                   'maxVelocity', [],...
                   'startInertia', [],...
                   'endInertia', [],...
                   'boundaryCond','dummy',...
                   'fminMaxFunEvals',0 ...
               );
returnData = ptapso(fitFuncHandle,nDim,psoParams);
disp(['Best value found ', num2str(returnData.bestSNR)]);
disp(['Best location ', num2str(returnData.bestLocation)]);
disp('--------------------');
disp('Running PTAPSO with special Boundary condition and no local minimization');
rng('default');
psoParams = struct('popSize', [],...
                   'maxSteps', [],...
                   'c1',[], 'c2', [],...
                   'maxInitialVelocity', [],...
                   'maxVelocity', [],...
                   'startInertia', [],...
                   'endInertia', [],...
                   'boundaryCond','dummy',...
                   'fminMaxFunEvals',0 ...
               );
returnData = ptapso(fitFuncHandle,nDim,psoParams);
disp(['Best value found ', num2str(returnData.bestSNR)]);
disp(['Best location ', num2str(returnData.bestLocation)]);
disp('--------------------');
%%
% (4) It is not essential to supply all the fields in the optional input
% structure. Fields that are not supplied retain their default values
psoParams = struct('popSize', [],...
                   'maxSteps', 100,...
                   'maxVelocity', 0.5,...
                   'fminMaxFunEvals',10 ...
               );
returnData = ptapso(fitFuncHandle,nDim,psoParams);
disp(['Best value found ', num2str(returnData.bestSNR)]);
disp(['Best location ', num2str(returnData.bestLocation)]);
disp('--------------------');

                   