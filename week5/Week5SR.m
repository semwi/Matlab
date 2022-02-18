% Kon de afbeelding niet vinden op blackboard, dus ik heb een screenshot
% genomen

%0-255
%unsigned
imread("albert.png");


%BitDepth: 24
imfinfo("albert.png");

% Is dit goed?.
colormap("autumn")
axis("off")
imagesc(imread("albert.png"));
image(imread("albert.png"));
