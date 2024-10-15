figure(1);

% read and display the jpg file
img = imread('barbaraLarge.jpg');
imshow(img), colorbar;


% compare different resizing factors w/ and w/o anti-aliasing
figure(2);

subplot(2, 3, 1);
rf = 0.9;
img_resized = imresize(img, rf, 'nearest', 'antialiasing', 0);
imshow(img_resized);
title('Barbara Image w/o Anti-Alieasing and RF = 0.9');

subplot(2, 3, 2);
rf = 0.7;
img_resized = imresize(img, rf, 'nearest', 'antialiasing', 0);
imshow(img_resized);
title('Barbara Image w/o Anti-Alieasing and RF = 0.7');

subplot(2, 3, 3);
rf = 0.5;
img_resized = imresize(img, rf, 'nearest', 'antialiasing', 0);
imshow(img_resized);
title('Barbara Image w/o Anti-Alieasing and RF = 0.5');

subplot(2, 3, 4);
rf = 0.9;
img_resized = imresize(img, rf, 'nearest', 'antialiasing', 1);
imshow(img_resized);
title('Barbara Image w/ Anti-Alieasing and RF = 0.9');

subplot(2, 3, 5);
rf = 0.7;
img_resized = imresize(img, rf, 'nearest', 'antialiasing', 1);
imshow(img_resized);
title('Barbara Image w/ Anti-Alieasing and RF = 0.7');

subplot(2, 3, 6);
rf = 0.5;
img_resized = imresize(img, rf, 'nearest', 'antialiasing', 1);
imshow(img_resized);
title('Barbara Image w/ Anti-Alieasing and RF = 0.5');