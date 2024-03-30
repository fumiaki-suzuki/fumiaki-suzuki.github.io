/*****************************************/
// This Magma file accompanies the article
// Arithmetic and birational properties of linear spaces on intersections of two quadrics by Lena Ji and Fumiaki Suzuki.
// This file includes explicit examples of smooth intersections of quadrics in several real isotopy classes of interest.
/*****************************************/

/*****************************************/
// 4-dimensional example with F_2(X)(R) empty but with Q^{(1)} R-rational
// Krasnov invariant is (2,1,2,1,1), so X satisfies the conditions of Corollary 5.7(2)
/*****************************************/
RP6<x0,x1,x2,x3,x4,x5,x6> := PolynomialRing(Rationals(), 7);
Q0 := -200*x0*x2 - 1/20*x0*x3 - 1/2*x0*x4 - 5/7*x0*x5 + 50/29*x0*x6 - 3*x1*x2 +
    3/4*x1*x3 + x1*x4 - 9*x1*x5 + 2*x1*x6 + 5/9*x2^2 - 7/4*x2*x3 + 33/2*x2*x4 +
    45/2*x2*x5 + 6*x2*x6 + 33*x3^2 + 5/2*x3*x4 + 2/5*x3*x5 + 5/3*x3*x6 - 9*x4^2
    + 5*x4*x5 + 5/3*x4*x6 - 1/5*x5^2 + x5*x6 - 9*x6^2;
Q1 := -3/7*x0*x2 - 5*x0*x3 - 6*x0*x4 + 8/3*x0*x5 + 58*x0*x6 - 1/3*x1*x2 + 33/13*x1*x3
    - 3/2*x1*x4 - 19*x1*x5 + 7*x1*x6 - 4/9*x2^2 + 8/7*x2*x3 - 3/8*x2*x4 +
    1/2*x2*x5 + 9/8*x2*x6 - 2*x3^2 + 2/3*x3*x4 + 7/9*x3*x5 + 9*x3*x6 - 66/7*x4^2
    + 3/11*x4*x5 - 15*x4*x6 - 5/33*x5^2 + 3/4*x5*x6 + 7/11*x6^2;
P6:=Proj(RP6); X4:= Scheme(P6, Q0) meet Scheme(P6, Q1);
assert IsNonsingular(X4) eq true;
assert Dimension(X4) eq 4;

R<x0,x1,x2,x3,x4,x5,x6> := PolynomialRing(RealField(), 7);
Q0 := -200*x0*x2 - 1/20*x0*x3 - 1/2*x0*x4 - 5/7*x0*x5 + 50/29*x0*x6 - 3*x1*x2 +
    3/4*x1*x3 + x1*x4 - 9*x1*x5 + 2*x1*x6 + 5/9*x2^2 - 7/4*x2*x3 + 33/2*x2*x4 +
    45/2*x2*x5 + 6*x2*x6 + 33*x3^2 + 5/2*x3*x4 + 2/5*x3*x5 + 5/3*x3*x6 - 9*x4^2
    + 5*x4*x5 + 5/3*x4*x6 - 1/5*x5^2 + x5*x6 - 9*x6^2;
Q1 := -3/7*x0*x2 - 5*x0*x3 - 6*x0*x4 + 8/3*x0*x5 + 58*x0*x6 - 1/3*x1*x2 + 33/13*x1*x3
    - 3/2*x1*x4 - 19*x1*x5 + 7*x1*x6 - 4/9*x2^2 + 8/7*x2*x3 - 3/8*x2*x4 +
    1/2*x2*x5 + 9/8*x2*x6 - 2*x3^2 + 2/3*x3*x4 + 7/9*x3*x5 + 9*x3*x6 - 66/7*x4^2
    + 3/11*x4*x5 - 15*x4*x6 - 5/33*x5^2 + 3/4*x5*x6 + 7/11*x6^2;
M0 := SymmetricMatrix(Q0);
M1 := SymmetricMatrix(Q1);
AA<t> := PolynomialRing(Rationals());
Mt := M0 + t*M1;
GammaBranch:= Determinant(Mt);
print "The pencil drops rank over the real points [1:t] with";
Roots(GammaBranch, RealField());
print "Number of real corank 1 points";
#(Roots(GammaBranch, RealField()));

Mfiber1 := M0 + 1200*M1;
Mfiber2 := M0 + 5*M1;
Mfiber3 := M0 + 2*M1;
Mfiber4 := M0 + 0*M1;
Mfiber5 := M0 + (-0.4)*M1;
Mfiber6 := M0 + (-0.6)*M1;
Mfiber7 := M0 + (-1)*M1;
Mfiber8 := -Mfiber1;
Mfiber9 := -Mfiber2;
Mfiber10 := -Mfiber3;
Mfiber11 := -Mfiber4;
Mfiber12 := -Mfiber5;
Mfiber13 := -Mfiber6;
Mfiber14 := -Mfiber7;

print "The signatures of the fibers of the pencil of 5-diml quadrics (M_0 + t M_1=0) are";
NumericalSignature(Mfiber1);
NumericalSignature(Mfiber2);
NumericalSignature(Mfiber3);
NumericalSignature(Mfiber4);
NumericalSignature(Mfiber5);
NumericalSignature(Mfiber6);
NumericalSignature(Mfiber7);
NumericalSignature(Mfiber8);
NumericalSignature(Mfiber9);
NumericalSignature(Mfiber10);
NumericalSignature(Mfiber11);
NumericalSignature(Mfiber12);
NumericalSignature(Mfiber13);
NumericalSignature(Mfiber14);

/*****************************************/
// 6-dimensional example with F_3(X)(R) empty but with Q^{(2)} R-rational
// Krasnov invariant is (2,1,1,2,1,1,1), so X satisfies the conditions of Corollary 5.7(2)
/*****************************************/
RP8<x0,x1,x2,x3,x4,x5,x6,x7,x8> := PolynomialRing(Rationals(), 9);
Q0 := -200*x0*x2 - 1/20*x0*x3 - 1/2*x0*x4 - 5/7*x0*x5 + 50/29*x0*x6 - 3*x1*x2 +
    3/4*x1*x3 + x1*x4 - 9*x1*x5 + 2*x1*x6 + 5/9*x2^2 - 7/4*x2*x3 + 33/2*x2*x4 +
    45/2*x2*x5 + 6*x2*x6 + 33*x3^2 + 5/2*x3*x4 + 2/5*x3*x5 + 5/3*x3*x6 - 9*x4^2
    + 5*x4*x5 + 5/3*x4*x6 - 1/5*x5^2 + x5*x6 - 9*x6^2;
Q1 := -3/7*x0*x2 - 5*x0*x3 - 6*x0*x4 + 8/3*x0*x5 + 58*x0*x6 - 1/3*x1*x2 + 33/13*x1*x3
    - 3/2*x1*x4 - 19*x1*x5 + 7*x1*x6 - 4/9*x2^2 + 8/7*x2*x3 - 3/8*x2*x4 +
    1/2*x2*x5 + 9/8*x2*x6 - 2*x3^2 + 2/3*x3*x4 + 7/9*x3*x5 + 9*x3*x6 - 66/7*x4^2
    + 3/11*x4*x5 - 15*x4*x6 - 5/33*x5^2 + 3/4*x5*x6 + 7/11*x6^2;
// these Q0, Q1 are the same as those defined in the previous example
Q0new := Q0 + x7^2 + x7*x8 + x8^2;
Q1new := Q1 + x7^2 - x7*x8 + x8^2;
P8:=Proj(RP8); X6:= Scheme(P8, Q0new) meet Scheme(P8, Q1new);
assert IsNonsingular(X6) eq true;
assert Dimension(X6) eq 6;

R<x0,x1,x2,x3,x4,x5,x6,x7,x8> := PolynomialRing(RealField(), 9);
Q0 := -200*x0*x2 - 1/20*x0*x3 - 1/2*x0*x4 - 5/7*x0*x5 + 50/29*x0*x6 - 3*x1*x2 +
    3/4*x1*x3 + x1*x4 - 9*x1*x5 + 2*x1*x6 + 5/9*x2^2 - 7/4*x2*x3 + 33/2*x2*x4 +
    45/2*x2*x5 + 6*x2*x6 + 33*x3^2 + 5/2*x3*x4 + 2/5*x3*x5 + 5/3*x3*x6 - 9*x4^2
    + 5*x4*x5 + 5/3*x4*x6 - 1/5*x5^2 + x5*x6 - 9*x6^2;
Q1 := -3/7*x0*x2 - 5*x0*x3 - 6*x0*x4 + 8/3*x0*x5 + 58*x0*x6 - 1/3*x1*x2 + 33/13*x1*x3
    - 3/2*x1*x4 - 19*x1*x5 + 7*x1*x6 - 4/9*x2^2 + 8/7*x2*x3 - 3/8*x2*x4 +
    1/2*x2*x5 + 9/8*x2*x6 - 2*x3^2 + 2/3*x3*x4 + 7/9*x3*x5 + 9*x3*x6 - 66/7*x4^2
    + 3/11*x4*x5 - 15*x4*x6 - 5/33*x5^2 + 3/4*x5*x6 + 7/11*x6^2;
Q0new := Q0 + x7^2 + x7*x8 + x8^2;
Q1new := Q1 + x7^2 - x7*x8 + x8^2;
M0 := SymmetricMatrix(Q0new);
M1 := SymmetricMatrix(Q1new);
AA<t> := PolynomialRing(Rationals());
Mt := M0 + t*M1;
GammaBranch:= Determinant(Mt);
print "The pencil drops rank over the real points [1:t] with";
Roots(GammaBranch, RealField());
print "Number of real corank 1 points";
#(Roots(GammaBranch, RealField()));

Mfiber1 := M0 + 1200*M1;
Mfiber2 := M0 + 5*M1;
Mfiber3 := M0 + 2*M1;
Mfiber4 := M0 + 1*M1;
Mfiber5 := M0 + (-0.35)*M1;
Mfiber6 := M0 + (-0.4)*M1;
Mfiber7 := M0 + (-0.6)*M1;
Mfiber8 := M0 + (-1)*M1;
Mfiber9 := M0 + (-5)*M1;
Mfiber10 := -Mfiber1;
Mfiber11 := -Mfiber2;
Mfiber12 := -Mfiber3;
Mfiber13 := -Mfiber4;
Mfiber14 := -Mfiber5;
Mfiber15 := -Mfiber6;
Mfiber16 := -Mfiber7;
Mfiber17 := -Mfiber8;
Mfiber18 := -Mfiber9;

print "The signatures of the fibers of the pencil of 5-diml quadrics (M_0 + t M_1=0) are";
NumericalSignature(Mfiber1);
NumericalSignature(Mfiber2);
NumericalSignature(Mfiber3);
NumericalSignature(Mfiber4);
NumericalSignature(Mfiber5);
NumericalSignature(Mfiber6);
NumericalSignature(Mfiber7);
NumericalSignature(Mfiber8);
NumericalSignature(Mfiber9);
NumericalSignature(Mfiber10);
NumericalSignature(Mfiber11);
NumericalSignature(Mfiber12);
NumericalSignature(Mfiber13);
NumericalSignature(Mfiber14);
NumericalSignature(Mfiber15);
NumericalSignature(Mfiber16);
NumericalSignature(Mfiber17);
NumericalSignature(Mfiber18);

/*****************************************/
// 4-dimensional example with F_1(X) unirational but irrational over R
// Krasnov invariant is (3,2,2), so X satisfies the conditions of Corollary 5.7(3)
/*****************************************/
RP4<x0,x1,x2,x3,x4,x5,x6> := PolynomialRing(Rationals(), 7);
Q0 := x0^2 + x1^2 - x2^2 - x2*x3 - x3^2 + x4^2 + x4*x5 + 30*x5^2 + x0*x6+ x1*x6 - x2*x6 + x3*x6 - x4*x6 + x5*x6+ 50*x6^2;
Q1 := x0^2 + x1^2 - 2*x2^2 - 2*x2*x3 - 2*x3^2 + 3*x4^2 + 3*x4*x5 + 90*x5^2 + x0*x6+ 2*x1*x6 + 3*x2*x6 + 4*x3*x6 + 5*x4*x6 + 6*x5*x6+ 7*x6^2;
P6:=Proj(RP4); X4:= Scheme(P6, Q0) meet Scheme(P6, Q1);
assert IsNonsingular(X4) eq true;
assert Dimension(X4) eq 4;

R<x0,x1,x2,x3,x4,x5,x6> := PolynomialRing(RealField(), 7);
Q0 := x0^2 + x1^2 - x2^2 - x2*x3 - x3^2 + x4^2 + x4*x5 + 30*x5^2 + x0*x6+ x1*x6 - x2*x6 + x3*x6 - x4*x6 + x5*x6+ 50*x6^2;
Q1 := x0^2 + x1^2 - 2*x2^2 - 2*x2*x3 - 2*x3^2 + 3*x4^2 + 3*x4*x5 + 90*x5^2 + x0*x6+ 2*x1*x6 + 3*x2*x6 + 4*x3*x6 + 5*x4*x6 + 6*x5*x6+ 7*x6^2;
M0 := SymmetricMatrix(Q0);
M1 := SymmetricMatrix(Q1);
AA<t> := PolynomialRing(Rationals());
Mt := M0 + t*M1;
GammaBranch:= Determinant(Mt);
print "The pencil drops rank over the real points [1:t] with";
Roots(GammaBranch, RealField());
print "Number of real corank 1 points";
#(Roots(GammaBranch, RealField()));

Mfiber1 := M0 + 0*M1;
Mfiber2 := M0 + (-0.33)*M1;
Mfiber3 := M0 + (-0.4)*M1;
Mfiber4 := M0 + (-0.51)*M1;
Mfiber5 := M0 + (-0.6)*M1;
Mfiber6 := M0 + (-0.999)*M1;
Mfiber7 := M0 + (-2)*M1;
Mfiber8 := -Mfiber1;
Mfiber9 := -Mfiber2;
Mfiber10 := -Mfiber3;
Mfiber11 := -Mfiber4;
Mfiber12 := -Mfiber5;
Mfiber13 := -Mfiber6;
Mfiber14 := -Mfiber7;

print "The signatures of the fibers of the pencil of 5-diml quadrics (M_0 + t M_1=0) are";
NumericalSignature(Mfiber1);
NumericalSignature(Mfiber2);
NumericalSignature(Mfiber3);
NumericalSignature(Mfiber4);
NumericalSignature(Mfiber5);
NumericalSignature(Mfiber6);
NumericalSignature(Mfiber7);
NumericalSignature(Mfiber8);
NumericalSignature(Mfiber9);
NumericalSignature(Mfiber10);
NumericalSignature(Mfiber11);
NumericalSignature(Mfiber12);
NumericalSignature(Mfiber13);
NumericalSignature(Mfiber14);

/*****************************************/
// 5-dimensional example with Q^{(1)} nonempty and connected but irrational
// Krasnov invariant is (3,2,1), so X gives an explicit example whose isotopy class is listed in Example 5.10
/*****************************************/
RP7<x0,x1,x2,x3,x4,x5,x6,x7> := PolynomialRing(Rationals(), 8);
Q0 := 7/5*x0^2 + 2*x0*x1 + 3/5*x1^2 + x0*x2 + 8/7*x1*x2 + 6/7*x2^2 + 9*x0*x3 + 8*x1*x3 + 16/3*x2*x3 + 3/2*x3^2 + 16/5*x0*x4 + 8/5*x1*x4 + 9*x2*x4 + 2*x3*x4 + 2*x4^2 + 14/5*x0*x5 + x1*x5 + 8/7*x2*x5 + 8/7*x3*x5 + 8*x4*x5 + 4/3*x5^2 + 4/5*x0*x6 + 2/5*x1*x6 + 4*x2*x6 + 6*x3*x6 + 6/5*x4*x6 + 4/3*x5*x6 + 9/5*x6^2 + 2/7*x0*x7 + 10/3*x1*x7 + 4/7*x2*x7 + 2/3*x3*x7 + 6/7*x4*x7 + 2*x5*x7 + 16/5*x6*x7 + 2*x7^2;
Q1 := 4/3*x0^2 + 5*x0*x1 + 5*x1^2 + 2*x0*x2 + 18/7*x1*x2 + 4*x2^2 + 2/5*x0*x3 + 4*x1*x3 + 2/7*x2*x3 + 6/5*x3^2 + 5*x0*x4 + 14/5*x1*x4 + 16/5*x2*x4 + 14/5*x3*x4 + 7/5*x4^2 + 14/3*x0*x5 + 4/3*x1*x5 + 6/7*x2*x5 + 12/7*x3*x5 + 2*x4*x5 + 9/5*x5^2 + 2*x0*x6 + 20/7*x1*x6 + 6/5*x2*x6 + 14/5*x3*x6 + 9*x4*x6 + 3*x5*x6 + 1/5*x6^2 + 10/3*x0*x7 + 14/3*x1*x7 + 12/5*x2*x7 + 10/7*x3*x7 + 18/7*x4*x7 + 14/5*x5*x7 + 9*x6*x7 + 3/2*x7^2;
P7:=Proj(RP7); X5:= Scheme(P7, Q0) meet Scheme(P7, Q1);
assert IsNonsingular(X5) eq true;
assert Dimension(X5) eq 5;

R<x0,x1,x2,x3,x4,x5,x6,x7> := PolynomialRing(RealField(), 8);
Q0 := 7/5*x0^2 + 2*x0*x1 + 3/5*x1^2 + x0*x2 + 8/7*x1*x2 + 6/7*x2^2 + 9*x0*x3 + 8*x1*x3 + 16/3*x2*x3 + 3/2*x3^2 + 16/5*x0*x4 + 8/5*x1*x4 + 9*x2*x4 + 2*x3*x4 + 2*x4^2 + 14/5*x0*x5 + x1*x5 + 8/7*x2*x5 + 8/7*x3*x5 + 8*x4*x5 + 4/3*x5^2 + 4/5*x0*x6 + 2/5*x1*x6 + 4*x2*x6 + 6*x3*x6 + 6/5*x4*x6 + 4/3*x5*x6 + 9/5*x6^2 + 2/7*x0*x7 + 10/3*x1*x7 + 4/7*x2*x7 + 2/3*x3*x7 + 6/7*x4*x7 + 2*x5*x7 + 16/5*x6*x7 + 2*x7^2;
Q1 := 4/3*x0^2 + 5*x0*x1 + 5*x1^2 + 2*x0*x2 + 18/7*x1*x2 + 4*x2^2 + 2/5*x0*x3 + 4*x1*x3 + 2/7*x2*x3 + 6/5*x3^2 + 5*x0*x4 + 14/5*x1*x4 + 16/5*x2*x4 + 14/5*x3*x4 + 7/5*x4^2 + 14/3*x0*x5 + 4/3*x1*x5 + 6/7*x2*x5 + 12/7*x3*x5 + 2*x4*x5 + 9/5*x5^2 + 2*x0*x6 + 20/7*x1*x6 + 6/5*x2*x6 + 14/5*x3*x6 + 9*x4*x6 + 3*x5*x6 + 1/5*x6^2 + 10/3*x0*x7 + 14/3*x1*x7 + 12/5*x2*x7 + 10/7*x3*x7 + 18/7*x4*x7 + 14/5*x5*x7 + 9*x6*x7 + 3/2*x7^2;
M0 := SymmetricMatrix(Q0);
M1 := SymmetricMatrix(Q1);
AA<t> := PolynomialRing(Rationals());
Mt := M0 + t*M1;
GammaBranch:= Determinant(Mt);
print "The pencil drops rank over the real points [1:t] with";
Roots(GammaBranch, RealField());
print "Number of real corank 1 points";
#(Roots(GammaBranch, RealField()));

Mfiber1 := M0 + 10*M1;
Mfiber2 := M0 + 3*M1;
Mfiber3 := M0 + 1*M1;
Mfiber4 := M0 + 0*M1;
Mfiber5 := M0 + (-0.5)*M1;
Mfiber6 := M0 + (-1)*M1;
Mfiber7 := -Mfiber1;
Mfiber8 := -Mfiber2;
Mfiber9 := -Mfiber3;
Mfiber10 := -Mfiber4;
Mfiber11 := -Mfiber5;
Mfiber12 := -Mfiber6;

print "The signatures of the fibers of the pencil of 5-diml quadrics (M_0 + t M_1=0) are";
NumericalSignature(Mfiber1);
NumericalSignature(Mfiber2);
NumericalSignature(Mfiber3);
NumericalSignature(Mfiber4);
NumericalSignature(Mfiber5);
NumericalSignature(Mfiber6);
NumericalSignature(Mfiber7);
NumericalSignature(Mfiber8);
NumericalSignature(Mfiber9);
NumericalSignature(Mfiber10);
NumericalSignature(Mfiber11);
NumericalSignature(Mfiber12);