function[] = new_step(k, Ti, Td, T)
licz_o = 10;
mian_o = [1 2 2 1];
licz_r = [k*(Ti*T+Td*Ti) k*(Ti+T) k];
mian_r = [Ti*T Ti 0];
[lo, mo] = series(licz_o, mian_o, licz_r, mian_r);
[lz, mz] = cloop(lo, mo, -1);
figure
step(lz, mz);
xlabel('Czas');
ylabel('Odp obiektu');
title('Odpowiedź skokowa')
end
