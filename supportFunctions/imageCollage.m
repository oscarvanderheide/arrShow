function [axesHandle, imageHandle] = imageCollage(...
    imgArr,...
    parentPanelH,...
    colorMap,...
    keepAspectRatio,...
    keepTrueSize,...
    useQuiver,...
    forceComplex)

% get size of the image array
[dimY, dimX, noFrames] = size(imgArr);

% delete all uiobjects from parentPanelH
oldHandles = get(parentPanelH,'Children');
if ~isempty(oldHandles)
    delete(oldHandles);
end

% units and window position
origUnits = get(parentPanelH,'Units');
set(parentPanelH,'Units','pixel');
fpos = get(parentPanelH,'position');
fWidth = fpos(3);
fHeight = fpos(4);

% width and height of every image
nCols = ceil(sqrt(noFrames));
nRows = ceil(noFrames / nCols);
colHeight = floor(fHeight/nRows);
colWidth  = floor(fWidth/nCols);

if keepAspectRatio % account for aspect ratio
    imgRatio = dimY / dimX;
    colHeight = colWidth * imgRatio;
    if colHeight > floor(fHeight/nRows)
        colHeight = floor(fHeight/nRows);
        colWidth = colHeight / imgRatio;
    end
    yBorder2 = floor((fHeight - nRows * colHeight)/2);
    xBorder2 = floor((fWidth - nCols * colWidth)/2);
else
    yBorder2 = 0;
    xBorder2 = 0;
end

% display
imageHandle = zeros(noFrames,1);
axesHandle  = zeros(noFrames,1);

use_qMRI_colormaps = strcmp(colorMap, 'qMRI');

% Set the qMRI colormaps depending on the number of frames 
if noFrames == 2
    % If there are three frames, it is assumed the maps correspond to T1, T2
    qMRIColorMaps = {'lipari', 'navia'};    
elseif noFrames == 3 
    % If there are three frames, it is assumed the maps correspond to T1, T2 and abs(PD) 
    qMRIColorMaps = {'lipari', 'navia', 'gray'};
elseif noFrames == 4
    % If there are four frames, it is assumed the maps correspond to T1, T2, B1 and abs(PD) 
    qMRIColorMaps = {'lipari', 'navia', 'viridis', 'gray'};
elseif noFrames == 6
    % If there are six frames, it is assumed the maps correspond to:
    % T1, T2, B1, B0, abs(PD), angle(PD) 
    qMRIColorMaps = {'lipari', 'navia', 'viridis', 'rdbu_r', 'gray', 'martin_phase(256)'};
else
    % No qMRI colormaps are used
    
    % Fill cells with grayscale colormap
    qMRIColorMaps = cell(1, noFrames);
    for i = 1:noFrames
        qMRIColorMaps{i} = 'gray';
    end
    % qMRIColorMaps = {};
end

for n=1:noFrames

    disp(['Displaying frame ', num2str(n), ' of ', num2str(noFrames)]);
    
    % image position
    x0 = mod((n-1),nCols)  * colWidth + xBorder2;
    y0 = fHeight - colHeight - (floor((n-1)/nCols) * colHeight) - yBorder2;
    
    ah = axes('Parent',parentPanelH,'units','pixel','position',[x0, y0, colWidth, colHeight]);
    
    if keepTrueSize
        pixelPos = get(ah,'position');
        set(ah,'position',[pixelPos(1:2), dimY, dimX]);
    end
    currImg = imgArr(:,:,n);

    % Get the colormap for the current subplot
    if use_qMRI_colormaps
        colorMap = qMRIColorMaps{n};
    end

    if useQuiver              
        imageHandle(n) = quiver(real(currImg),imag(currImg),...
            'Parent',ah);
        set(ah,'YDir','reverse');        
        axis(ah,'tight');
        
        % store the original image in the axes handle's userData
        ud.selectedImage = currImg;
        set(ah,'UserData',ud);
    else
    
        if forceComplex || ~isreal(currImg)
            isComplex = true;
            [currImg, CLim] = complex2rgb(currImg, 256, [], colormap(ah, colorMap));
            if any(~isfinite(CLim))
                error([mfilename,':ExpectedFinite'],'CLim has to be finite');
            end
        else                        
            isComplex = false;
            colormap(ah,colorMap);        
        end
        % sssr: matlab 2017b + version does not update colormap without next line 
        set(ah,'NextPlot','replacechildren');
        imageHandle(n) = imagesc(currImg,'Parent',ah);    
        
        % add a colorbar
        if use_qMRI_colormaps
            colorbar(ah);
        end

        if isComplex
            if (CLim(1) == CLim(2))
                if(CLim(1) == 0)
                    CLim(1) = 1;
                    CLim(2) = 1;
                end
                CLim(1) = CLim(1)/2;
            end
            set(ah,'CLim',CLim);
        end    
    end
    if keepAspectRatio
        set(ah,'DataAspectRatio',[1,1,1]);
    end
    
    axis(ah,'off');    
    axesHandle(n) = ah;
end
set(parentPanelH,'Units',origUnits);
end
