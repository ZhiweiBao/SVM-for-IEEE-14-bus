%% 读取文件名
dirOutput=dir(fullfile('*.out'));%如果存在不同类型的文件，用‘*’读取所有，如果读取特定类型文件，'.'加上文件类型，例如用‘.jpg’
fileNames={dirOutput.name};
%% 导入所有的数据
fileD=cell(1,12);
data=[];
for j=1:12
    if j~=12
        fileD{j}=reshape(importdata(fileNames{j}),[11,1601])';
        data(:,j*10-9:j*10)=fileD{j}(:,2:end);
    else
        fileD{j}=reshape(importdata(fileNames{j}),[3,1601])';
        data(:,111)=fileD{j}(:,2);
    end    
end