%% ��ȡ�ļ���
dirOutput=dir(fullfile('*.out'));%������ڲ�ͬ���͵��ļ����á�*����ȡ���У������ȡ�ض������ļ���'.'�����ļ����ͣ������á�.jpg��
fileNames={dirOutput.name};
%% �������е�����
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