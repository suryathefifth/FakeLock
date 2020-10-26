

Hfig = findobj(0,'Tag','fakelock');
if ~isempty(Hfig)
    delete(Hfig);
end

% Create the main figure with the tag 'main_guifigure'
fakelockFig = figure('toolbar', 'none', 'windowstate', 'fullscreen', 'integerHandle', 'off', 'position', [-3287 -285 5500 1370], 'tag', 'fakelockFig');
% fakelockFig = figure('toolbar', 'none', 'integerHandle', 'off', 'units', 'norm', 'position', [-1.8 -.3, +3, +1.5], 'tag', 'fakelockFig');
uipanel(fakelockFig, 'units', 'norm', 'pos', [0, 0, 1, 1], 'backgroundcolor', [0 0 0], 'ButtonDownFcn', 'close(fakelockFig)', 'tag', 'BlackOutPanel');



oasisFig = figure('MenuBar', 'none', 'windowstate', 'fullscreen', 'tag', 'oasisFig');
oasisImageDisplay =  uipanel(oasisFig, 'backgroundcolor', [0.3 0 0], 'units', 'norm', 'pos', [0, 0, 1, 1], 'bordertype', 'none', 'Tag', 'oasisImageDisplay');



[oasisImg, ~, ~] = imread('oasisJPG.jpg');
% [oasisImg, ~, ~] = imread('centauri-logo.png');

oasisAx = axes(oasisImageDisplay, 'Units','norm');
oasisImg = flip(oasisImg, 1);

pause(1) %the axes wont expand for some reason without this pause!!!
oasisAx.InnerPosition = [0, 0, 1, 1]; %eliminate the margins for labels

pause(1) %the axes wont expand for some reason without this pause!!!
oasisAx.Position = [0, 0, 1, 1]; %eliminate the margins for labels

oasisAx.Units = 'pixels';
% resizePos = get(oasisAx,'Position');
% oasisImg= imresize(oasisImg, [resizePos(3) resizePos(3)]); %idk why its not (3) and (4)... something with the aspectratio
% oasisImg= imresize(oasisImg, [2000 1200]);

% pause(1) %the axes wont expand for some reason without this pause!!!
image(oasisAx, 'CData', imresize(oasisImg, [1999 1999])); %for some reason this is full screen on my monitor... this number can't be larger than monitor btw. and i know my monitor isnt 1999x1999 (ITS NOT A SQUARE) so maybe it has to do with fullscreen tag?
oasisAx.Visible = 'off';
% oasisAx.DataAspectRatioMode = 'manual';
% oasisAx.DataAspectRatio = [1 2 1];

% oasisAx.Clipping = 'off';


