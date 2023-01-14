function[out] = plotDNACharacters(a)
tot = [0 0 0 0];

for i=1:length(a)
  
  sv = a(i);
if sv == 'A';
  tot(1) = tot(1) + 1;
elseif sv == 'T';
  tot(2) = tot(2) + 1;
elseif sv == 'G';
  tot(3) = tot(3) +1;
elseif sv == 'C';
  tot(4)=tot(4) +1;
else
end

end
bar(tot);
hold;
lbls = ['A'; 'T'; 'G'; 'C'];

set(gca,'xticklabel',lbls);
out = tot;
end