function [] = finalProject ()
%Laying out basic figure and subplot
global graph;
graph.figure=figure('numbertitle','off','name','Graph Customizer');
subplot(2,1,1)
%Blank Series created and plot

graph.plot;
%Series Buttons
graph.xData = uicontrol('style', 'edit','units','normalized','position',[.05,.41,.15,.04],'string','');
graph.yData= uicontrol('style', 'edit','units','normalized','position',[.22,.41,.15,.04],'string','');
graph.xTitleText= uicontrol('style', 'text','units','normalized','position',[.05,.45,.15,.05],'string','X Series');
graph.yTitleText= uicontrol('style', 'text','units','normalized','position',[.22,.45,.15,.05],'string','Y Series');
graph.plot;
graph.resetAxisButton=uicontrol('style','pushbutton','units','normalized','position',[.034 .007 .14 .05],'string','Reset Series','callback',{@ResetPlotAxis});
graph.resetPlotButton=uicontrol('style','pushbutton','units','normalized','position',[.034 .107 .14 .05],'string','Reset ALL','callback',{@ResetPlot});
graph.PlotButton=uicontrol('style','pushbutton','units','normalized','position',[.034 .207 .14 .05],'string','Plot','callback',{@PlotFromUser});

%Style buttons
graph.colorText= uicontrol('style', 'text','units','normalized','position',[.6,.45,.08,.05],'string','Plot Color');
graph.pointText= uicontrol('style', 'text','units','normalized','position',[.7,.45,.08,.05],'string','Point Style');
graph.lineText= uicontrol('style', 'text','units','normalized','position',[.8,.45,.08,.05],'string','Line Style');
    %Style button groups
graph.colorBg= uibuttongroup(graph.figure,'Position',[.6,.25,.08,.2]);
graph.pointBg= uibuttongroup(graph.figure,'Position',[.7,.1,.08,.35]);
graph.lineBg= uibuttongroup(graph.figure,'Position',[.8,.25,.08,.2]);
    %color buttons
graph.colors(1) = uicontrol(graph.colorBg,'style','radiobutton','units','normalized','position',[.2,.88,1,.1],'string','Blue');
graph.colors(2) = uicontrol(graph.colorBg,'style','radiobutton','units','normalized','position',[.2,.75,1,.1],'string','Green');
graph.colors(3) = uicontrol(graph.colorBg,'style','radiobutton','units','normalized','position',[.2,.625,1,.1],'string','Red');
graph.colors(4) = uicontrol(graph.colorBg,'style','radiobutton','units','normalized','position',[.2,.5,1,.1],'string','Cyan');
graph.colors(5) = uicontrol(graph.colorBg,'style','radiobutton','units','normalized','position',[.2,.375,1,.1],'string','Magenta');
graph.colors(6) = uicontrol(graph.colorBg,'style','radiobutton','units','normalized','position',[.2,.25,1,.1],'string','Yellow');
graph.colors(7) = uicontrol(graph.colorBg,'style','radiobutton','units','normalized','position',[.2,.125,1,.1],'string','Black');
graph.colors(8) = uicontrol(graph.colorBg,'style','radiobutton','units','normalized','position',[.2,.005,1,.1],'string','White');
    %point buttons
graph.points(1) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.93,1,.1],'string','Point');
graph.points(2) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.86,1,.1],'string','Circle');
graph.points(3) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.79,1,.1],'string','X-Mark');
graph.points(4) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.72,1,.1],'string','Plus');
graph.points(5) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.64,1,.1],'string','Star');
graph.points(6) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.56,1,.1],'string','Square');
graph.points(7) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.48,1,.1],'string','Diamond');
graph.points(8) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.4,1,.1],'string','Triangle v');
graph.points(9) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.32,1,.1],'string','Triangle ^');
graph.points(10) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.24,1,.1],'string','Triangle <');
graph.points(11) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.16,1,.1],'string','Triangle >');
graph.points(12) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.08,1,.1],'string','Pentagram');
graph.points(13) = uicontrol(graph.pointBg,'style','radiobutton','units','normalized','position',[.2,.005,1,.1],'string','Hexagram');
    %line buttons
graph.lines(1) = uicontrol(graph.lineBg,'style','radiobutton','units','normalized','position',[.2,.9,1,.1],'string','Solid');
graph.lines(2) = uicontrol(graph.lineBg,'style','radiobutton','units','normalized','position',[.2,.7,1,.1],'string','Dotted');
graph.lines(3) = uicontrol(graph.lineBg,'style','radiobutton','units','normalized','position',[.2,.45,1,.1],'string','Dashdot');
graph.lines(4) = uicontrol(graph.lineBg,'style','radiobutton','units','normalized','position',[.2,.22,1,.1],'string','Dashed');
graph.lines(5) = uicontrol(graph.lineBg,'style','radiobutton','units','normalized','position',[.2,.005,1,.1],'string','No line');

%Axis Titles
graph.xAxis = uicontrol('style','edit','units','normalized','position',[.05,.3,.15,.04],'string','');
graph.xAxisTitle= uicontrol('style', 'text','units','normalized','position',[.05,.34,.15,.05],'string','X Axis Label');
graph.yAxis = uicontrol('style','edit','units','normalized','position',[.22,.3,.15,.04],'string','');
graph.yAxisTitle= uicontrol('style', 'text','units','normalized','position',[.22,.34,.15,.05],'string','Y Axis Label');
graph.title = uicontrol('style','edit','units','normalized','position',[.39,.3,.15,.04],'string','');
graph.titleTitle= uicontrol('style', 'text','units','normalized','position',[.39,.34,.15,.05],'string','Title');

%Call Reset
ResetPlot();
end
%========================================================================================================================

%Resets entire plot to default
function[]=ResetPlot(source, event)
hold off;
Plot(0,0,'');
xlabel('X Axis');
ylabel('Y Axis');
title('Graph Title');
xlim([-10 10]);
ylim([-10 10]);
hold on;
end

%Plot Function takes series inputs
function [] = Plot (xSeries,ySeries,style)
global graph;
graph.plot = plot(xSeries,ySeries,style);
    if(length(graph.xAxis.String)>0)
        xlabel(graph.xAxis.String);
    else
        xlabel('X Axis');
    end
    if(length(graph.yAxis.String)>0)
        ylabel(graph.yAxis.String);
    else
        ylabel('Y Axis');
    end
    if(length(graph.title.String)>0)
        title(graph.title.String);
    else
        title('Title');
    end


end

%Calls Plot if user input is plottable
function [] = PlotFromUser (source,event)
global graph;
    if (length(regexp(graph.xData.String,'[a-b]?+[A-B]?+','match'))<1 && length(regexp(graph.yData.String,'[a-b]?+[A-B]?+','match'))<1)
        x=str2num(graph.xData.String);
        y=str2num(graph.yData.String);
            if length(x) == length(y)
                Plot(x,y,StyleMaker());
            else
                msgbox('X and Y Series do not have the same number of values','Unable To Plot','error','modal');
            end
    else
        msgbox('Invalid Input. Input must be numbers seperated by only a space','Unable To Plot','error','modal');
    end
    
end

%Creates a style string using 3 maker functions which read radio buttons
function[style] = StyleMaker()
style = strcat(strcat(ColorMaker(),PointMaker()),LineMaker());

end
function[c]=ColorMaker()
global graph;
    if strcmp(get(graph.colorBg,'SelectedObject').String,'Blue')
        c='b';
    elseif strcmp(get(graph.colorBg,'SelectedObject').String,'Green')
        c='g';
    elseif strcmp(get(graph.colorBg,'SelectedObject').String,'Red')
        c='r';
    elseif strcmp(get(graph.colorBg,'SelectedObject').String,'Cyan')
        c='c';
    elseif strcmp(get(graph.colorBg,'SelectedObject').String,'Magenta')
        c='m';
    elseif strcmp(get(graph.colorBg,'SelectedObject').String,'Yellow')
        c='y';
    elseif strcmp(get(graph.colorBg,'SelectedObject').String,'Black')
        c='k';
    elseif strcmp(get(graph.colorBg,'SelectedObject').String,'White')
        c='w';
    end
end
function[p]=PointMaker()
global graph;
    if strcmp(get(graph.pointBg,'SelectedObject').String,'Point')
        p='.';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'Circle')
        p='o';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'X-Mark')
        p='x';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'Plus')
        p='+';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'Star')
        p='*';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'Square')
        p='s';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'Diamond')
        p='d';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'Triangle v')
        p='v';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'Triangle ^')
        p='^';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'Triangle <')
        p='<';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'Triangle >')
        p='>';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'Pentagram')
        p='p';
    elseif strcmp(get(graph.pointBg,'SelectedObject').String,'Hexagram')
        p='h';
    end
end
function[l]=LineMaker()
global graph;
    if strcmp(get(graph.lineBg,'SelectedObject').String,'Solid')
        l='-';
    elseif strcmp(get(graph.lineBg,'SelectedObject').String,'Dotted')
        l=':';
    elseif strcmp(get(graph.lineBg,'SelectedObject').String,'Dashdot')
        l='-.';
    elseif strcmp(get(graph.lineBg,'SelectedObject').String,'Dashed')
        l='--';
    end
end
