%% read the jpg file and get metrics
vase = imread('vase.jpg');
[rows, cols] = size(vase);
max_pixel = max(vase(:));

disp(['Number of rows: ', num2str(rows)]);
disp(['Number of cols: ',  num2str(cols)]);
disp(['Max pixel value: ',  num2str(max_pixel)]);

%% create the new bright jpg
vase_bright = vase + 30;
imwrite(vase_bright, 'vase_bright.jpg', 'jpg', 'Quality', 100);