function varargout = Graph(varargin)
% GRAPH MATLAB code for Graph.fig
%      GRAPH, by itself, creates a new GRAPH or raises the existing
%      singleton*.
%
%      H = GRAPH returns the handle to a new GRAPH or the handle to
%      the existing singleton*.
%
%      GRAPH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAPH.M with the given input arguments.
%
%      GRAPH('Property','Value',...) creates a new GRAPH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Graph_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Graph_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Graph

% Last Modified by GUIDE v2.5 18-Nov-2018 12:38:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Graph_OpeningFcn, ...
                   'gui_OutputFcn',  @Graph_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Graph is made visible.
function Graph_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Graph (see VARARGIN)

% Choose default command line output for Graph
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Graph wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Graph_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in openButton.
function openButton_Callback(hObject, eventdata, handles)
% hObject    handle to openButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global path file url;
      [file,path] = uigetfile('*.xlsx', 'Select EXCEL  File','MultiSelect', 'off');
      url = fullfile(path,file);
      handles.nameText.String=file;

function nameText_Callback(hObject, eventdata, handles)
% hObject    handle to nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nameText as text
%        str2double(get(hObject,'String')) returns contents of nameText as a double


% --- Executes during object creation, after setting all properties.
function nameText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function titleText_Callback(hObject, eventdata, handles)
% hObject    handle to titleText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of titleText as text
%        str2double(get(hObject,'String')) returns contents of titleText as a double


% --- Executes during object creation, after setting all properties.
function titleText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to titleText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in nuemPop.
function nuemPop_Callback(hObject, eventdata, handles)
% hObject    handle to nuemPop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns nuemPop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nuemPop


% --- Executes during object creation, after setting all properties.
function nuemPop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nuemPop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in denoPop.
function denoPop_Callback(hObject, eventdata, handles)
% hObject    handle to denoPop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns denoPop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from denoPop


% --- Executes during object creation, after setting all properties.
function denoPop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to denoPop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in analysButton.
function analysButton_Callback(hObject, eventdata, handles)
% hObject    handle to analysButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
global file url sheet_name dispayOut fignew;
sheet_name=handles.sheetNameText.String;
nuem=get(handles.nuemPop,'Value');
deno=get(handles.denoPop,'Value');
fit_dataTran=0;
goodness_dataTran=0;
fit_dataUv=0;
goodness_dataUv=0;
state=0;
if(~isempty(file))
    [frequncy,photo_Voltage,uv_Voltage]=read_data_voltage_frequncy(url,sheet_name); 
    if(length(frequncy)>(nuem+deno))
        equation=getRationalFunction(nuem,deno);
        set(handles.dispyRun,'String','Sucess Equation..');
       
        
        axes(handles.ax);
        [fit_dataTran,goodness_dataTran,outputTran,indexTra]=getFitDataFunction(equation,frequncy,photo_Voltage,'General Model of Transistor :');
        [fit_dataUv,goodness_dataUv,outputUv,indexUv]=getFitDataFunction(equation,frequncy,uv_Voltage,'General Model of UV :');
        
        if(get(handles.tranBox ,'Value'))&&(~(get(handles.uvBox ,'Value'))&&(~(get(handles.tranOriginal ,'Value'))))
             plot(fit_dataTran,frequncy,photo_Voltage);
             legend('Data Points','Photo Transistor Curve','Location','northwest');
             state=1;
        end
        if(get(handles.tranBox ,'Value'))&&(~(get(handles.uvBox ,'Value'))&&((get(handles.tranOriginal ,'Value'))))
             plot(frequncy,photo_Voltage);
             legend('Photo Transistor Curve','Location','northwest');
             state=1;
        end
       
        if(get(handles.uvBox ,'Value'))&&(~get(handles.tranBox ,'Value'))&&(~(get(handles.originalUv ,'Value')))
            plot(fit_dataUv,frequncy,uv_Voltage); 
            legend('Data Points','UV diode Curve','Location','northwest');
            state=2;
        end
        if(get(handles.uvBox ,'Value'))&&(~get(handles.tranBox ,'Value'))&&((get(handles.originalUv ,'Value')))
            plot(frequncy,uv_Voltage); 
            legend('UV diode Curve','Location','northwest');
            state=2;
        end
        
        
        if(get(handles.uvBox ,'Value'))&&(get(handles.tranBox ,'Value'))&&((~get(handles.originalUv ,'Value')))&&(~(get(handles.tranOriginal ,'Value')))
            state=3;
             plot(fit_dataTran,'m');
              hold on;
             plot(fit_dataUv,'c');
             hold on;
             plot(frequncy,uv_Voltage,'.','color','blue');
               hold on; 
             plot(frequncy,photo_Voltage,'.','color','blue');
             
             legend('Photo Transistor','UV diode','Location','northwest');
        end
        
          if (get(handles.uvBox ,'Value'))&&(get(handles.tranBox ,'Value'))&&((get(handles.originalUv ,'Value')))&&(~(get(handles.tranOriginal ,'Value')))
            state=3;
             plot(fit_dataTran,'m');
              hold on;
             plot(frequncy,uv_Voltage,'-o','color','red');
               hold on; 
             plot(frequncy,photo_Voltage,'.','color','blue');
             
             legend('Photo Transistor','UV diode','Location','northwest');
         end
        
         if(get(handles.uvBox ,'Value'))&&(get(handles.tranBox ,'Value'))&&((~get(handles.originalUv ,'Value')))&&((get(handles.tranOriginal ,'Value')))
            state=3;
             plot(frequncy,photo_Voltage,'-o','color','red');
              hold on;
             plot(fit_dataUv,'c');
              hold on;
             plot(frequncy,uv_Voltage,'.','color','blue');
             legend('Photo Transistor','UV diode','Location','northwest');
             
        end
        if(get(handles.uvBox ,'Value'))&&(get(handles.tranBox ,'Value'))&&((get(handles.originalUv ,'Value')))&&((get(handles.tranOriginal ,'Value')))
            state=3; 
             plot(frequncy,photo_Voltage,'-o','color','red');
              hold on;
             plot(frequncy,uv_Voltage,'-o','color','blue');
             legend('Photo Transistor','UV diode','Location','northwest');
             
        end
        
        if(state>0)
            grid on;
            title(handles.titleText.String);
            xlabel('Frequency (kHz)');
            ylabel('Voltage (mV)');
            hold off;
            handles.listOutPut.String='';
            set(handles.listOutPut,'Min',0,'Max',(indexTra+indexUv));
            
            position=1;
            dispayOut={};
            
            if(get(handles.tranBox ,'Value'))
               for r1=1:1:indexTra
                   dispayOut(position)=outputTran(r1);
                   position=position+1;
               end
            end
            if(get(handles.uvBox ,'Value'))
               for r1=1:1:indexUv
                   dispayOut(position)=outputUv(r1);
                   position=position+1;
               end
            end
             
             
             handles.listOutPut.String=dispayOut;
             delete(fignew);
             fignew = figure('Visible','off'); % Invisible figure
             %%% new figure save to
                 if(get(handles.tranBox ,'Value'))&&(~(get(handles.uvBox ,'Value'))&&(~(get(handles.tranOriginal ,'Value'))))
                     plot(fit_dataTran,frequncy,photo_Voltage);
                     legend('Data Points','Photo Transistor Curve','Location','northwest');
                     state=1;
                end
                if(get(handles.tranBox ,'Value'))&&(~(get(handles.uvBox ,'Value'))&&((get(handles.tranOriginal ,'Value'))))
                     plot(frequncy,photo_Voltage);
                     legend('Photo Transistor Curve','Location','northwest');
                     state=1;
                end

                if(get(handles.uvBox ,'Value'))&&(~get(handles.tranBox ,'Value'))&&(~(get(handles.originalUv ,'Value')))
                    plot(fit_dataUv,frequncy,uv_Voltage); 
                    legend('Data Points','UV diode Curve','Location','northwest');
                    state=2;
                end
                if(get(handles.uvBox ,'Value'))&&(~get(handles.tranBox ,'Value'))&&((get(handles.originalUv ,'Value')))
                    plot(frequncy,uv_Voltage); 
                    legend('UV diode Curve','Location','northwest');
                    state=2;
                end


                if(get(handles.uvBox ,'Value'))&&(get(handles.tranBox ,'Value'))&&((~get(handles.originalUv ,'Value')))&&(~(get(handles.tranOriginal ,'Value')))
                    state=3;
                     plot(fit_dataTran,'m');
                      hold on;
                     plot(fit_dataUv,'c');
                     hold on;
                     plot(frequncy,uv_Voltage,'.','color','blue');
                       hold on; 
                     plot(frequncy,photo_Voltage,'.','color','blue');

                     legend('Photo Transistor','UV diode','Location','northwest');
                end

                  if (get(handles.uvBox ,'Value'))&&(get(handles.tranBox ,'Value'))&&((get(handles.originalUv ,'Value')))&&(~(get(handles.tranOriginal ,'Value')))
                    state=3;
                     plot(fit_dataTran,'m');
                      hold on;
                     plot(frequncy,uv_Voltage,'-o','color','red');
                       hold on; 
                     plot(frequncy,photo_Voltage,'.','color','blue');

                     legend('Photo Transistor','UV diode','Location','northwest');
                 end

                 if(get(handles.uvBox ,'Value'))&&(get(handles.tranBox ,'Value'))&&((~get(handles.originalUv ,'Value')))&&((get(handles.tranOriginal ,'Value')))
                    state=3;
                     plot(frequncy,photo_Voltage,'-o','color','red');
                      hold on;
                     plot(fit_dataUv,'c');
                      hold on;
                     plot(frequncy,uv_Voltage,'.','color','blue');
                     legend('Photo Transistor','UV diode','Location','northwest');

                end
                if(get(handles.uvBox ,'Value'))&&(get(handles.tranBox ,'Value'))&&((get(handles.originalUv ,'Value')))&&((get(handles.tranOriginal ,'Value')))
                    state=3; 
                     plot(frequncy,photo_Voltage,'-o','color','red');
                      hold on;
                     plot(frequncy,uv_Voltage,'-o','color','blue');
                     legend('Photo Transistor','UV diode','Location','northwest');

                end
                    if(state>0)
                         grid on;
                        title(handles.titleText.String);
                        xlabel('Frequency (kHz)');
                        ylabel('Voltage (mV)');
                        hold off;
                    end
             %%%

        end
        
    else
        set(handles.dispyRun,'String',['Error At Least ',int2str(nuem+deno),' Points Need..']);
        handles.listOutPut.String='';
        axes(handles.ax);
        plot(0,0);
    end
end

% --- Executes on button press in tranBox.
function tranBox_Callback(hObject, eventdata, handles)
% hObject    handle to tranBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tranBox


% --- Executes on button press in uvBox.
function uvBox_Callback(hObject, eventdata, handles)
% hObject    handle to uvBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of uvBox
%================================================================
function [frequncy,photo_Voltage,uv_Voltage]=read_data_voltage_frequncy(url,sheet2_name)% read sheet 2 datas
    [num,text,~]= xlsread(url,sheet2_name);
    
    [rows,col]=size(text); % read number of colums and rows

    photoTran_col=0; % colum number of photo transistor input
    uvDiod_col=0; % colum number of uv diod input
    frequncy_col=0; % colum number of frequncy

    states=0;% set all colum number state
    witch_row=0;
    for j=4:1:rows
        for i=1:1:col
            if(isequal(char(cellstr(cell(text(j,i)))),'Phototransistor Reading (mV)'))
                photoTran_col=i;
                states=states+0;
                witch_row=j;
            end
            if(isequal(char(cellstr(cell(text(j,i)))),'UV diode  (mV)'))
                uvDiod_col=i;
                states=states+1;
            end
            if(isequal(char(cellstr(cell(text(j,i)))),'Frequency (kHz)'))
                frequncy_col=i;
                states=states+1;
            end
            
        end
        if(states==3)
            break;
        end
    end
    uv_Voltage=[];
    photo_Voltage=[];
    frequncy=[];
     if(states==3)
        % remove nan values
        for r=witch_row:1:length(num(:,frequncy_col))
            if(~isnan(num(r,uvDiod_col)))
                uv_Voltage=[uv_Voltage,num(r,uvDiod_col)];
            end
            if(~isnan(num(r,photoTran_col)))
                photo_Voltage=[photo_Voltage,num(r,photoTran_col)];
            end
            if(~isnan(num(r,frequncy_col)))
                frequncy=[frequncy,num(r,frequncy_col)];
            end
        end
     end
%end

function equation=getRationalFunction(nume,demo)
     coffiections={'c1','c2','c3','c4','c5','c6','c7','c8','c9','c10','c11','c12','c13','c14','c15','c16','c17','c18','c19','c20'};
     equationPart={};
     %3
 syms x;
 upper=0;
 lower=0;
     n=nume;
     m=demo;
     for i=1:1:nume
         if(n>0)
            upper=upper+(coffiections{i}*(x^n));
         end
         n=n-1;
         if(n==0)
            upper=upper+coffiections{i+1};
         end
     end
     
     for j=1:1:demo
         if(m==demo)
             lower=lower+(x^m);
         end
         if(m>0)&&(demo>m)
            lower=lower+(coffiections{j+(nume+1)}*(x^m));
         end
         m=m-1;
         if(m==0)
            lower=lower+coffiections{j+1+(nume+1)};
         end
     end
     
   equation=(upper)/(lower);
%end

function [fit_data,goodness_data,output,index]=getFitDataFunction(equation,x_values,y_values,name)
    index=1;
    output={'=============================',name};
    fo = fitoptions('Method','NonlinearLeastSquares','Lower',[0,0],'Upper',[Inf,max(x_values)]);
    ft = fittype(char(equation),'options',fo);
    [fit_data,goodness_data]= fit(x_values',y_values',ft,'normalize','on');
     output(3)={['f(x)=',char(equation)]};
     index=3;
     coeffsSet=coeffnames(ft);
     coevalues=coeffvalues(fit_data);
     %goodness_arrayTran=['sse :',char(goodness_dataTran.sse),'rsquare :',goodness_dataTran.rsquare,'dfe :',goodness_dataTran.dfe,'adjrsquare :',goodness_dataTran.adjrsquare,'rmse :',goodness_dataTran.rmse];
     for i=1:1:numcoeffs(ft)
         index=index+1;
         output(index)={[coeffsSet{i},' = ',num2str(coevalues(i))]};   
     end
        index=index+1;
        output(index)={'------------------------------'};
        index=index+1;
        output(index)={'goodness values :'};
        index=index+1;
        output(index)={['sse :',num2str(goodness_data.sse)]};
        index=index+1;
        output(index)={['rsquare :',num2str(goodness_data.rsquare)]};
        index=index+1;
        output(index)={['dfe :',num2str(goodness_data.dfe)]};
        index=index+1;
        output(index)={['adjrsquare :',num2str(goodness_data.adjrsquare)]};
        index=index+1;
        output(index)={['rmse :',num2str(goodness_data.rmse)]};
        index=index+1;
        output(index)={'============================='};
        index=index+1;
        output(index)={'                   '};
%end 

function sheetNameText_Callback(hObject, eventdata, handles)
% hObject    handle to sheetNameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sheetNameText as text
%        str2double(get(hObject,'String')) returns contents of sheetNameText as a double


% --- Executes during object creation, after setting all properties.
function sheetNameText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sheetNameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listOutPut.
function listOutPut_Callback(hObject, eventdata, handles)
% hObject    handle to listOutPut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listOutPut contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listOutPut


% --- Executes during object creation, after setting all properties.
function listOutPut_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listOutPut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%


% --------------------------------------------------------------------
function save_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
global dispayOut file fignew;

[FileName,PathName] = uiputfile(...
 {'*.jpg';'*.png';'*.fig';'*.*'},...
 'Save as');
saveDataName = fullfile(PathName,FileName);


saveas(fignew,saveDataName);
delete(fignew);

newStr = strrep(file,'.xlsx','.txt');
fileID = fopen(newStr,'wt');
for i=1:1:length(dispayOut)
   fprintf(fileID,'%s\n',dispayOut{i});
end
fclose(fileID);

saveas(handles.ax,'./a.png');


% --- Executes on button press in tranOriginal.
function tranOriginal_Callback(hObject, eventdata, handles)
% hObject    handle to tranOriginal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tranOriginal


% --- Executes on button press in originalUv.
function originalUv_Callback(hObject, eventdata, handles)
% hObject    handle to originalUv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of originalUv
