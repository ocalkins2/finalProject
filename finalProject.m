function [] = finalProject ()
%Laying out basic figure and default reset plot
global graph;
graph.figure=figure('numbertitle','off','name','Graph Customizer');
graph.xData;
graph.yData;
graph.sData;
subplot(2,1,1)
graph.plot;
ResetPlot();
%=====================================================================
graph.resetAxisButton=uicontrol('style','pushbutton','units','normalized','position',[.034 .007 .14 .05],'string','Reset Plot Axis','callback',{@ResetPlotAxis});
graph.resetPlotButton=uicontrol('style','pushbutton','units','normalized','position',[.034 .107 .14 .05],'string','Reset Entire Plot','callback',{@ResetPlot});

end


function[]=ResetPlot(source, event)
global graph;
hold off;
graph.plot = plot(0,0);
xlabel('X Axis');
ylabel('Y Axis');
title('Graph Title');
end

function[]=ResetPlotAxis(source,event)
global graph;
hold on;
graph.plot = plot([0 1 2 3 4 5],[0 1 2 3 4 5]);
end