syms w c beta a_bar u eta X N g E Vp Xp C(c) c_bar


% social optimum FOC
ut = log(c);
% C = c_bar + (N-1)*c;
C = N*c;
W = X - Xp/(1 + g) - C;
m_t = a_bar*W/(C + a_bar*W);
V  = ut + beta*Vp*m_t;

assume(c >= 0);
assume(W >= 0);
assume(Xp >= 0);
assume(C + W <= X);
% assume(C <= X - Xp/(1 + g));

eqn = diff(V, c) == 0;
res = solve(eqn, c) 
simplify(res)

Vp = 99.98780653482194;
X = 12500.0;
a_bar = 10^5;
beta = 0.95;
N = 5;
g = 0.06575;
Xp = 12651.043822520951;

% social optimum FOC
ut = log(c);
C = N*c;
W = X - Xp/(1 + g) - C;
m_t = a_bar*W/(C + a_bar*W);
V  = ut + beta*Vp*m_t;

assume(c >= 0);
assume(W >= 0);
assume(C + W <= X);

eqn = diff(V, c) == 0;
c_bar = solve(eqn, c);
double(c_bar)

w_bar = (X - Xp/(1 + g) - N*c_bar)/N;
double(w_bar)






