function [] = Nyquist_compare(k, Ti, Td, T)
licz_o = 10;
mian_o = [1 2 2 1];
licz_r = [k*(Ti*T+Td*Ti) k*(Ti+T) k];
mian_r = [Ti*T Ti 0];
[lo, mo] = series(licz_o, mian_o, licz_r, mian_r);
figure
nyquist(lo, mo);
axis([-10 0 -1 1])
xlabel('Real')
ylabel('Im')
title('Charakterystyka Nyquista')
end
