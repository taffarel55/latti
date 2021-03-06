# a) X(s) = (2s2 + 5)/(s2 +3s +2)
num = [2 0 5]; den = [1 3 2];
[r, p, k] = residue(num,den);
disp(['(a) r = [',num2str(r.',' %0.5g'),']']);...
disp(['    p = [',num2str(p.',' %0.5g'),']']);...
disp(['    k = [',num2str(k.',' %0.5g'),']']);
disp('');
 
# b) X(s) = (2s2 + 7s + 4)/((s+1)(s+2)2)
num = [2 7 4]; den = [conv([1 1],conv([1 2],[1 2]))];
[r, p, k] = residue(num,den);
disp(['(b) r = [',num2str(r.',' %0.5g'),']']);...
disp(['    p = [',num2str(p.',' %0.5g'),']']);...
disp(['    k = [',num2str(k.',' %0.5g'),']']);
disp('');

# c) X(s) = (8s2 + 21s + 19)/((s+2)(s2+s+7))
num = [8 21 19]; den = [conv([1 2],[1 1 7])];
[r, p, k] = residue(num,den);
[radr, magr] = cart2pol(real(r),imag(r));
[radp, magp] = cart2pol(real(p),imag(p));
disp(['(c) r_real = [',num2str(radr.',' %0.5g'),']']);...
disp(['    r_imag = [',num2str(magr.',' %0.5g'),']']);...
disp(['    p_real = [',num2str(radp.',' %0.5g'),']']);...
disp(['    p_imag = [',num2str(magp.',' %0.5g'),']']);...
disp(['    k = [',num2str(k.',' %0.5g'),']']);