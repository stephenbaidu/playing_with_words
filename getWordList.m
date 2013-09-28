function wordList = getWordList()
	fid = fopen('brit-a-z.txt');
	
	n = 0;
	i = 0;

	while feof(fid) == 0
		word = fgetl(fid);
		if length(strfind(word, "'")) == 0 && length(word) > 0
		  n = n + 1;
		end
	end
	
	frewind(fid);
	wordList = cell(n, 1);
	while feof(fid) == 0
		word = fgetl(fid);
		if length(strfind(word, "'")) == 0 && length(word) > 0
		  wordList{i = i + 1} = word;
		end
	end

	fclose(fid);

end