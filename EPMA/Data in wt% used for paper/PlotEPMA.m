clear
close all

AllFiles = dir('*WDS*'); % Find files containing WDS

for i=1:length(AllFiles) % Loop through files
    file=importdata(AllFiles(i).name);

    % Find out which element is plotted using the name
    for j = 23:25
        if AllFiles(i).name(j)=="_"
            EndName=j;
        end
    end
    element = convertCharsToStrings(AllFiles(i).name(23:EndName-1));
    name=strcat(element, " (wt%)");

    if contains(element, ["Cr" "Mo" "V" "Mn" "C" "Si"]) % Choose element(s) to plot here.
        map = zeros(256,3);
        % Colour scheme kept the same for each element
        switch element
            case 'Cr'
                map(:,1) = linspace(0,1,256);
            case 'Mo'
                map(:,2) = linspace(0,1,256);
            case 'Si'
                map(:,3) = linspace(0,1,256);
            case 'C'
                map(:,1) = linspace(0,1,256);
                map(:,2) = linspace(0,1,256);
            case 'V'
                map(:,2) = linspace(0,1,256);
                map(:,3) = linspace(0,1,256);
            case 'Mn'
                map(:,1) = linspace(0,1,256);
                map(:,3) = linspace(0,1,256);
            otherwise
                map = 'copper';
        end

        % Threshold wtih percentiles
        list = reshape(file,[],1);
        LowerLimit = quantile(list,0.01);
        UpperLimit = quantile(list,0.99);

        % Threshold Manually
%         LowerLimit = 0.2;
%         UpperLimit = 0.26;

        Percentiles = zeros(60, 3);
        Percentiles(:,1) = LowerLimit;
        Percentiles(:,2) = UpperLimit;
        [a, b] = mode(round(list,2));
        Percentiles(:,3) = linspace(0,b,60);

        figure() % Plot histogram with lines showing where the thresholds are.
        title(element)
        hold on
        histogram(file);
        plot(Percentiles(:,1),Percentiles(:,3),'k',LineWidth=2)
        plot(Percentiles(:,2),Percentiles(:,3),'k',LineWidth=2)
        xlabel('Quant (wt%)')
        ylabel('Frequency')
        xlim([quantile(list,0.001), quantile(list,0.997)])
        set(gca,'FontSize',18)

        file(file < LowerLimit) = LowerLimit;
        file(file > UpperLimit) = UpperLimit;

        figure() % Plot the EPMA map.
        f=imshow(file);
        colormap(map)
        caxis([min(file,[],'all') max(file,[],'all')])
        c=colorbar;
        title(name)
        set(gca,'FontSize',28)
        savename = strcat(name,'.png');
        saveas(gcf,savename)
    end
end