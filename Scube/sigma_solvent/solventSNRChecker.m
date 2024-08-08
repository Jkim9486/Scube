filenameList = {...
    'sigma_acetonitrile_50um_HPLC_15keV_XSS_PALXFEL2403_v2' ...
    'sigma_acetonitilre_ESRF_2203' ...
    'sigma_cyclohexane_PALXFEL_2204' ...
    'sigma_cyclohexane_ESRF_2203' ...
    'sigma_methanol_PALXFEL_2204' ...
    'sigma_methanol_ESRF_2203' ...
    'sigma_water_PALXFEL_2204' ...
    'sigma_water_ESRF_2203' ...
    };

numFile = length(filenameList);

% exposure_timeC = cell(1,numFile);
% photons_per_pulseC = cell(1,numFile);
% pulse_repetitionC = cell(1,numFile);
% scaling_factorC = cell(1,numFile);


q_expC = cell(1,numFile);
std_per_secondC = cell(1,numFile);


for idx = 1:numFile
    filename = filenameList{idx};
    load(filename);


    std_per_second = std_exp*sqrt(exposure_time)*scaling_factor;
    q_expC{idx} = q_exp;

    std_per_secondC{idx} = std_per_second; 
end

figure;

cmap = colormap(cool(4));


for idx = 1:numFile
    if ~mod(idx,2)
        plot(q_expC{idx},std_per_secondC{idx},'LineWidth',1,'LineStyle','--','Color',cmap(ceil(idx/2),:));
    else
        plot(q_expC{idx},std_per_secondC{idx},'LineWidth',1.5,'Color',cmap(ceil(idx/2),:));
    end
hold on;
end
hold off;

legend(filenameList,'Interpreter','none');
figureAllocation;

% ylim([0 2.5]);
ylim([0 0.35]);
xlim([2 8]);

ylabel('S(q)');
