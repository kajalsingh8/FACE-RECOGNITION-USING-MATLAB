clc
clear all
close all
warning off;
cao=webcam;
faceDetector=vision.CascadeObjectDetector;
c=150;
temp=0;
while true
e=cao.snapshot;
bboxes =step(faceDetector,e);
if(sum(sum(bboxes))~=0)
if(temp>=c)
break;
else
es=imcrop(e,bboxes(1,:));
es=imresize(es,[227 227]);
filename=strcat(num2str(temp),'.bmp');
imwrite(es,filename);
temp=temp+1;
imshow(es);
drawnow;
end
else
imshow(e);
drawnow;
end
end
Training model:
clc
clear all
close all
warning off
g=alexnet;
layers=g.Layers;
layers(23)=fullyConnectedLayer(2);
layers(25)=classificationLayer;
allImages=imageDatastore('datastorage','IncludeSubfolders',true, 'LabelSource','foldernames');
opts=trainingOptions('sgdm','InitialLearnRate',0.001,'MaxEpochs',20,'MiniBatchSize',64);
myNet1=trainNetwork(allImages,layers,opts);
save myNet1;
Testing Model:
clc;close;clear
c=webcam;
load myNet1;
faceDetector=vision.CascadeObjectDetector;
while true
e=c.snapshot;
bboxes =step(faceDetector,e);
if(sum(sum(bboxes))~=0)
es=imcrop(e,bboxes(1,:));
es=imresize(es,[227 227]);
label=classify(myNet1,es);
image(e);
title(char(label));
drawnow;
else
image(e);
title('No Face Detected');
end
end  
