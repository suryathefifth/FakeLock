

Hfig = findobj(0,'Tag','fakelock');
if ~isempty(Hfig)
    delete(Hfig);
end

%create large figure that will be blacked out
fakelockFig = figure('toolbar', 'none', 'windowstate', 'fullscreen', 'integerHandle', 'off', 'position', [-3287 -285 5500 1370], 'tag', 'fakelockFig');
uipanel(fakelockFig, 'units', 'norm', 'pos', [0, 0, 1, 1], 'backgroundcolor', [0 0 0], ...
    'ButtonDownFcn', 'close(fakelockFig); close(oasisFig)', 'tag', 'BlackOutPanel');


%create one-desktop sized figure that will hold background image
oasisFig = figure('MenuBar', 'none', 'windowstate', 'fullscreen', 'tag', 'oasisFig');
oasisImageDisplay =  uipanel(oasisFig, 'units', 'norm', 'pos', [0, 0, 1, 1], 'backgroundcolor', [0 0 0], ...
    'ButtonDownFcn', 'close(fakelockFig); close(oasisFig)', 'Tag', 'OasisImagePanel', ...
    'bordertype', 'none');


%display background image
[oasisImg, ~, ~] = imread('oasisJPG.jpg');
oasisAx = axes(oasisImageDisplay, 'Units','norm', 'ButtonDownFcn', 'close(fakelockFig); close(oasisFig)'); %TODO: this won't work... not super important though
oasisImg = flip(oasisImg, 1);

pause(.6) %the axes wont expand for some reason without this pause!!!
oasisAx.InnerPosition = [0, 0, 1, 1]; %eliminate the margins for labels
oasisAx.Position = [0, 0, 1, 1]; %eliminate the margins for labels

oasisAx.Units = 'pixels';
image(oasisAx, 'CData', imresize(oasisImg, [1999 1999])); %for some reason this is full screen on my monitor... this number can't be larger than monitor btw. and i know my monitor isnt 1999x1999 (ITS NOT A SQUARE) so maybe it has to do with fullscreen tag?
oasisAx.Visible = 'off';



