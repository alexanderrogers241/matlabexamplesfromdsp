%
% DFT example N=4 as matrix equation
%

k = 0:3;
n = (0:3)';

NK = n*k;
N = 4;

W = exp(-j*2*pi*NK/N)

x = [1 2 3 4]';
X = fft(x, 4);

X
Xmatrix = W*x
