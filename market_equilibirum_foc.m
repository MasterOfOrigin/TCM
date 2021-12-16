clear
syms w c beta a_bar u eta X N g E Vp Xp C(c) c_bar



ut = log(c);
C = c + (N-1)*c_bar;
W = X - Xp/(1 + g) - C;
m_t = a_bar*W/(C + a_bar*W);
V  = ut + beta*Vp*m_t;

assume(c >= 0);
assume(W >= 0);
assume(C + W <= X);

eqn2 = diff(V, c) == 0;
c_new = solve(eqn2, c);
c_new2 = c_new(2)
simplify(c_new)

Vp = 99.98780653482194;
X = 12500.0;
a_bar = 10^5;
beta = 0.95;
N = 5;
g = 0.06575;
Xp = 12651.043822520951;
c_bar = 122.0696;


ut = log(c);
C = c + (N-1)*c_bar;
W = X - Xp/(1 + g) - C;
m_t = a_bar*W/(C + a_bar*W);
V  = ut + beta*Vp*m_t;

assume(c >= 0);
assume(W >= 0);
assume(C + W <= X);

eqn2 = diff(V, c) == 0;
c_new = solve(eqn2, c);
double(c_new)

w_new = X - Xp/(1 + g) - c_bar*(N-1) - c_new;
double(w_new)

