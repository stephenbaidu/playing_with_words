
%% Initialization
clear ; close all; clc

fprintf('Reading files...\n')
words = getWordList();
chars = char([97:122]);

fprintf('Gathering statistics...\n')
stats = getStats(chars, words);

fprintf('Plotting graph...\n');
imshow(stats);

fprintf('Press enter to quit ...\n');
pause;