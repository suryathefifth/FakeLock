

Hfig = findobj(0,'Tag','fakelock');
if ~isempty(Hfig)
    delete(Hfig);
end

% Create the main figure with the tag 'main_guifigure'
fakelockFig = figure('toolbar', 'none', 'windowstate', 'fullscreen', 'integerHandle', 'off', 'position', [-3287 -285 5500 1370], 'tag', 'fakelockFig');
% fakelockFig = figure('toolbar', 'none', 'integerHandle', 'off', 'units', 'norm', 'position', [-1.8 -.3, +3, +1.5], 'tag', 'fakelockFig');
uipanel(fakelockFig, 'units', 'norm', 'pos', [0, 0, 1, 1], 'backgroundcolor', [0 0 0], 'ButtonDownFcn', 'close(fakelockFig)', 'tag', 'BlackOutPanel');






