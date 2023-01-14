function[] = DNACondonHist(a)
if rem(length(a),3)==0
a_a1 = ['I' 'L' 'V' 'F' 'M' 'C' 'A' 'G' 'P' 'T' 'S' 'Y' 'W' 'Q' 'N' 'H' 'E' 'D' 'K' 'R' 'Stop'];
a_a = ['I' 'L' 'V' 'F' 'M' 'C' 'A' 'G' 'P' 'T' 'S' 'Y' 'W' 'Q' 'N' 'H' 'E' 'D' 'K' 'R' 'Stop'];

I = ['ATT' 'ATC' 'ATA'];
L = ['CTT' 'CTC' 'CTA' 'CTG' 'TTA' 'TTG'];
V = ['GTT' 'GTC' 'GTA' 'GTG'];
F = ['TTT' 'TTC'];
M = ['ATG'];
C = ['TGT' 'TGC'];
A = ['GGT' 'GGC' 'GCA' 'GCG'];
G = ['GGT' 'GGC' 'GGA' 'GGG'];
P = ['CCT' 'CCC' 'CCA' 'CCG'];
T = ['ACT' 'ACC' 'ACA' 'ACG'];
S = ['TCT' 'TCC' 'TCA' 'TCG' 'AGT' 'AGC'];
Y = ['TAT' 'TAC'];
W = ['TGG'];
Q = ['CAA' 'CAG'];
N = ['AAT' 'AAC'];
H = ['CAT' 'CAC'];
E = ['GAA' 'GAG'];
D = ['GAT' 'GAC'];
K = ['AAA' 'AAG'];
R = ['CGT' 'CGC' 'CGA' 'CGG' 'AGA' 'AGG'];
Stop = ['TAA' 'TAG' 'TGA'];


s_c = a(1:3);
for i = 1:21
    s_r = a_a(i);
    s_q =  eval(s_r);
   
    s_l = length(s_q);
    for j = 1:3:s_l 
            
            if s_q(j:j+2) == s_c
              s_a = eval(a_a(i));
              break
            end

    end
end

s_a_l = length(s_a)
s_a_c = zeros(1,s_a_l/3);
error = 0;

len = length(a);
    %count the occurences of codon in particular amino acid or if codon doesnot belong to amino acid report error and continue the process
for run = 1:3:len
    s_c_c = a(run:run+2);
    for run_i = 1:3:s_a_l
        if s_c_c == s_a(run_i:run_i+2)
            s_a_c(floor(run_i/3)+1) = s_a_c(floor(run_i/3)+1) + 1;
        %else 
        %   run 
        %  run_i
        % error = error + 1;
        end 
    end
end
if error > 0
    fprintf('Few sets of char either doesnot belong to the amino_acid or was not at all a codon \n');
end
bar(s_a_c);
hold
cont = {};
for j = 1:length(s_a)/3
    cont(j) = s_a((j-1)*3 + 1:(j-1)*3+3);
end
set(gca,'xticklabel',cont);

fprintf('Codon \t Count \t Percent \n');
for run_2 = 1:(s_a_l/3)
fprintf('%s \t %d \t %d \n',s_a((run_2 -1)*3 + 1:(run_2-1)*3 + 3),s_a_c(run_2),((s_a_c(run_2)*100)/sum(s_a_c)));
end

else
fprintf('Please recheck the string');
end

end