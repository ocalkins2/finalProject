function [] = finalProject ()
%Laying out basic figure and subplot
global graph;
graph.figure=figure('numbertitle','off','name','Graph Customizer');
subplot(2,1,1)
%Blank Series created and plot

graph.plot;
%Edit Text boxes and UI text above 
graph.xData = uicontrol('style', 'edit','units','normalized','position',[.05,.4,.15,.05],'string','');
graph.yData= uicontrol('style', 'edit','units','normalized','position',[.45,.4,.15,.05],'string','');
graph.xTitleText= uicontrol('style', 'text','units','normalized','position',[.05,.45,.15,.05],'string','X Series');
graph.yTitleText= uicontrol('style', 'text','units','normalized','position',[.45,.45,.15,.05],'string','Y Series');
graph.sTitleText= uicontrol('style', 'text','units','normalized','position',[.8,.45,.15,.05],'string','Plot Style');
graph.plot;
graph.resetAxisButton=uicontrol('style','pushbutton','units','normalized','position',[.034 .007 .14 .05],'string','Reset Series','callback',{@ResetPlotAxis});
graph.resetPlotButton=uicontrol('style','pushbutton','units','normalized','position',[.034 .107 .14 .05],'string','Reset ALL','callback',{@ResetPlot});
graph.PlotButton=uicontrol('style','pushbutton','units','normalized','position',[.034 .207 .14 .05],'string','Plot','callback',{@PlotFromUser});


%Call Reset
ResetPlot();
end

%Resets entire plot to default
function[]=ResetPlot(source, event)
hold on;
ResetPlotAxis();
xlabel('X Axis');
ylabel('Y Axis');
title('Graph Title');
end

%Resets only the axis series leaving all lables and titles intact
function[]=ResetPlotAxis(source,event)
global graph;
hold on;
Plot(0,0);
graph.xData = uicontrol('style', 'edit','units','normalized','position',[.05,.4,.15,.05],'string','');
graph.yData= uicontrol('style', 'edit','units','normalized','position',[.45,.4,.15,.05],'string','');
end

%Plot Function takes series inputs
function [] = Plot (xSeries,ySeries)
global graph;
graph.plot = plot(xSeries,ySeries);
end

%Calls plot if user input is plottable
function [] = PlotFromUser (source,event)
global graph;
x=str2num(graph.xData.String);
y=str2num(graph.yData.String);

if length(xSeries) == length(ySeries)
        Plot(x,y);
    else
        msgbox('X and Y Series do not have the same number of values','Unable To Plot','error','modal');
    end
end

