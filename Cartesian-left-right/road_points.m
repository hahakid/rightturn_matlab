function [xlist,ylist] = road_points(L)
    
    %c1
    p1=[-5*L/4,2*L+40];
    p2=[-3*L/4,2*L+40];
    p3=[-1*L/4,2*L+40];
    p4=[+L/4,2*L+40];
    p5=[3*L/4,2*L+40];
    
    %c2
    p6=[-40-5*L/4,2*L];
    p7=[-5*L/4,2*L];
    p8=[-3*L/4,2*L];
    p9=[-1*L/4,2*L];
    p10=[+L/4,2*L];
    p11=[3*L/4,2*L];
    p12=[40+3*L/4,2*L];

    %c3
    p13=[-40-5*L/4,3*L/2];
    p14=[-5*L/4,3*L/2];
    p15=[3*L/4,3*L/2];
    p16=[40+3*L/4,3*L/2];
    
    %c4
    p17=[-40-5*L/4,L];
    p18=[-5*L/4,L];
    p19=[3*L/4,L];
    p20=[40+3*L/4,L];
    
    %c5
    p21=[-40-5*L/4,L/2];
    p22=[-5*L/4,L/2];
    p23=[3*L/4,L/2];
    p24=[40+3*L/4,L/2];
    
    %c6
    p25=[-40-5*L/4,0];
    p26=[-5*L/4,0];
    p27=[-3*L/4,0];
    p28=[-1*L/4,0];
    p29=[+L/4,0];
    p30=[3*L/4,0];
    p31=[40+3*L/4,0];
    
    %c7
    p32=[-5*L/4,-40];
    p33=[-3*L/4,-40];
    p34=[-1*L/4,-40];
    p35=[+L/4,-40];
    p36=[3*L/4,-40];
    
    
    %直行定点
    p37=[-5*L/4+0.9,-10];
    p38=[-3*L/4-0.9,-10];
    
    %ego定点
    p39=[-5*L/4-4,2*L];
    p40=[-5*L/4-4,3*L/2];
    
    %右转定点
    p41=[-9*L/4,3*L/2];
    p42=[-9*L/4,L];
    
    %plist={p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36};
    %plist=cell2mat(plist);
    xlist=[p1(1),p2(1),p3(1),p4(1),p5(1),p6(1),p7(1),p8(1),p9(1),p10(1),p11(1),p12(1),p13(1),p14(1),p15(1),p16(1),p17(1),p18(1),p19(1),p20(1),p21(1),p22(1),p23(1),p24(1),p25(1),p26(1),p27(1),p28(1),p29(1),p30(1),p31(1),p32(1),p33(1),p34(1),p35(1),p36(1),p37(1),p38(1),p39(1),p40(1),p41(1),p42(1)];
    ylist=[p1(2),p2(2),p3(2),p4(2),p5(2),p6(2),p7(2),p8(2),p9(2),p10(2),p11(2),p12(2),p13(2),p14(2),p15(2),p16(2),p17(2),p18(2),p19(2),p20(2),p21(2),p22(2),p23(2),p24(2),p25(2),p26(2),p27(2),p28(2),p29(2),p30(2),p31(2),p32(2),p33(2),p34(2),p35(2),p36(2),p37(2),p38(2),p39(2),p40(2),p41(2),p42(2)];

end

