function stats = getStats(chars, words)
	stats = zeros(26, 1 + 26);% + 26);

	num_of_words = length(words);
	num_of_chars = length(chars);

	for w = 1:num_of_words
		word = words{w};
		for c = 1:num_of_chars
			ch = chars(c);
			idx = strfind(word,ch);
			stats(c, 1) = stats(c, 1) + length(idx);
			for i = idx(find(idx > 1))
				prec_ch = int8(char(word(i - 1))) - 96;  %preceeding char index
				if prec_ch > 0 && prec_ch < 27
					stats(c, 1 + prec_ch) = stats(c, 1 + prec_ch) + 1;
				end
			end
		end
	end
end