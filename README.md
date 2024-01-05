# FACE-RECOGNITION-USING-MATLAB

Objective-
To develop an efficient and accurate system using MATLAB that can automatically identify and authenticate individuals based on their facial features. The project aims to achieve the following objectives: Face Detection, Face Representation, Face Matching, Recognition and Authentication.

Description :-
Facial recognition is the process of identifying human faces through technology. The facial recognition system uses computer vision and Machine Learning techniques to model and classifies facial features extracted from images and videos. Algorithms for face identification extract and map facial features and compare them to a database of known faces to find the best match.
The facial classification process classifies human faces based on gender, age, emotions, and other relevant features using certain applications. The reason why it is dissimilar to face recognition is that it only compares the differences between two different images.

Syntax description of code:
detector = vision.CascadeObjectDetector: -This syntax is used for the creation of a detector that detects objects using the Viola-Jones algorithm.
Imcrop:- imcrop creates an interactive Crop Image tool to crop the grayscale, truecolor, or binary image displayed in the current figure. imcrop returns the cropped image, Icropped.
imresize:- It’s returns image es that has the number of rows and columns specified by the two-element vector [numrows numcols].
imwrite : imwrite( es , filename ) writes image data es to the file specified by filename , inferring the file format from the extension. imwrite creates the new file in your current folder.
imshow(___) returns the image object created by imshow.
drawnow : drawnow updates figures and processes any pending callbacks. Use this command if you modify graphics objects and want to see the updates on the screen immediately. drawnow limitrate limits the number of updates to 20 frames per second
