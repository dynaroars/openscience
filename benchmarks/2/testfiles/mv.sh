mkdir d1 d2 d3 d4; touch a b c d e d2/a d2/b d2/z d3/c d3/d ; ln -sf e f
mv a a_cp
mv b d1
mv c d1/
mv e d2/z
mv d e
mv d2/z ..
mv d2/* d3;
mv d3 d4 
mv d1 d4
