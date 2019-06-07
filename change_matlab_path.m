function change_matlab_path(setting)

if strcmp('default',setting)
    restoredefaultpath
    disp('Path set to default MATLAB path.')
elseif strcmp('user',setting)
    addpath(genpath('C:\Users\saini\Documents\PhD_Local_C\41_MATLAB\my_MATLAB_functions'))
    disp('Custom path loaded.')    
else
    error('Only "default" or "user" allowed!')
end