clear; clc;
year2014 = readmatrix('JanuaryAQHI2014.csv');
year2015 = readmatrix('JanuaryAQHI2015.csv');
year2016 = readmatrix('JanuaryAQHI2016.csv');
year2017 = readmatrix('JanuaryAQHI2017.csv');
year2018 = readmatrix('JanuaryAQHI2018.csv');
year2019 = readmatrix('JanuaryAQHI2019.csv');
year2020 = readmatrix('JanuaryAQHI2020.csv');
year2021 = readmatrix('JanuaryAQHI2021.csv');
year2022 = readmatrix('JanuaryAQHI2022.csv');

time = 2;

yearS = 2014:1:2022;
greatestAverageList = [];

CentralWestern = 3;
Eastern = 4;
KwunTong = 5;	
ShamShuiPo = 6;	
KwaiChung = 7;
TsuenWan = 8;
YuenLong = 9;	
TuenMun = 10;
TungChung = 11;
TaiPo = 12;
ShaTinNorth = 13;
TapMun = 14;
CausewayBay = 15;
Central	= 16;
MongKok = 17;

CentralWesternList = [];
EasternList	= [];
KwunTongList = [];	
ShamShuiPoList = [];	
KwaiChungList = [];
TsuenWanList = [];
YuenLongList = [];	
TuenMunList = [];
TungChungList = [];
TaiPoList = [];
ShaTinNorthList = [];
TapMunList = [];
CausewayBayList = [];
CentralList	= [];
MongKokList = [];
%disp(year2014(:,time))

% Central Western

CentralWesternList(1) = mean(year2014(:,CentralWestern), 'omitnan');
CentralWesternList(2) = mean(year2015(:,CentralWestern), 'omitnan');
CentralWesternList(3) = mean(year2016(:,CentralWestern), 'omitnan');
CentralWesternList(4) = mean(year2017(:,CentralWestern), 'omitnan');
CentralWesternList(5) = mean(year2018(:,CentralWestern), 'omitnan');
CentralWesternList(6) = mean(year2019(:,CentralWestern), 'omitnan');
CentralWesternList(7) = mean(year2020(:,CentralWestern), 'omitnan');
CentralWesternList(8) = mean(year2021(:,CentralWestern), 'omitnan');
CentralWesternList(9) = mean(year2022(:,CentralWestern), 'omitnan');

% Eastern

EasternList(1) = mean(year2014(:,Eastern), 'omitnan');
EasternList(2) = mean(year2015(:,Eastern), 'omitnan');
EasternList(3) = mean(year2016(:,Eastern), 'omitnan');
EasternList(4) = mean(year2017(:,Eastern), 'omitnan');
EasternList(5) = mean(year2018(:,Eastern), 'omitnan');
EasternList(6) = mean(year2019(:,Eastern), 'omitnan');
EasternList(7) = mean(year2020(:,Eastern), 'omitnan');
EasternList(8) = mean(year2021(:,Eastern), 'omitnan');
EasternList(9) = mean(year2022(:,Eastern), 'omitnan');

% Kwun Tong


KwunTongList(1) = mean(year2014(:,KwunTong), 'omitnan');
KwunTongList(2) = mean(year2015(:,KwunTong), 'omitnan');
KwunTongList(3) = mean(year2016(:,KwunTong), 'omitnan');
KwunTongList(4) = mean(year2017(:,KwunTong), 'omitnan');
KwunTongList(5) = mean(year2018(:,KwunTong), 'omitnan');
KwunTongList(6) = mean(year2019(:,KwunTong), 'omitnan');
KwunTongList(7) = mean(year2020(:,KwunTong), 'omitnan');
KwunTongList(8) = mean(year2021(:,KwunTong), 'omitnan');
KwunTongList(9) = mean(year2022(:,KwunTong), 'omitnan');

% Sham Shui Po

ShamShuiPoList(1) = mean(year2014(:,ShamShuiPo), 'omitnan');
ShamShuiPoList(2) = mean(year2015(:,ShamShuiPo), 'omitnan');
ShamShuiPoList(3) = mean(year2016(:,ShamShuiPo), 'omitnan');
ShamShuiPoList(4) = mean(year2017(:,ShamShuiPo), 'omitnan');
ShamShuiPoList(5) = mean(year2018(:,ShamShuiPo), 'omitnan');
ShamShuiPoList(6) = mean(year2019(:,ShamShuiPo), 'omitnan');
ShamShuiPoList(7) = mean(year2020(:,ShamShuiPo), 'omitnan');
ShamShuiPoList(8) = mean(year2021(:,ShamShuiPo), 'omitnan');
ShamShuiPoList(9) = mean(year2022(:,ShamShuiPo), 'omitnan');

% Kwai Chung

KwaiChungList(1) = mean(year2014(:,KwaiChung), 'omitnan');
KwaiChungList(2) = mean(year2015(:,KwaiChung), 'omitnan');
KwaiChungList(3) = mean(year2016(:,KwaiChung), 'omitnan');
KwaiChungList(4) = mean(year2017(:,KwaiChung), 'omitnan');
KwaiChungList(5) = mean(year2018(:,KwaiChung), 'omitnan');
KwaiChungList(6) = mean(year2019(:,KwaiChung), 'omitnan');
KwaiChungList(7) = mean(year2020(:,KwaiChung), 'omitnan');
KwaiChungList(8) = mean(year2021(:,KwaiChung), 'omitnan');
KwaiChungList(9) = mean(year2022(:,KwaiChung), 'omitnan');

% Tsuen Wan

TsuenWanList(1) = mean(year2014(:,TsuenWan), 'omitnan');
TsuenWanList(2) = mean(year2015(:,TsuenWan), 'omitnan');
TsuenWanList(3) = mean(year2016(:,TsuenWan), 'omitnan');
TsuenWanList(4) = mean(year2017(:,TsuenWan), 'omitnan');
TsuenWanList(5) = mean(year2018(:,TsuenWan), 'omitnan');
TsuenWanList(6) = mean(year2019(:,TsuenWan), 'omitnan');
TsuenWanList(7) = mean(year2020(:,TsuenWan), 'omitnan');
TsuenWanList(8) = mean(year2021(:,TsuenWan), 'omitnan');
TsuenWanList(9) = mean(year2022(:,TsuenWan), 'omitnan');

% Yuen Long List

YuenLongList(1) = mean(year2014(:,YuenLong), 'omitnan');
YuenLongList(2) = mean(year2015(:,YuenLong), 'omitnan');
YuenLongList(3) = mean(year2016(:,YuenLong), 'omitnan');
YuenLongList(4) = mean(year2017(:,YuenLong), 'omitnan');
YuenLongList(5) = mean(year2018(:,YuenLong), 'omitnan');
YuenLongList(6) = mean(year2019(:,YuenLong), 'omitnan');
YuenLongList(7) = mean(year2020(:,YuenLong), 'omitnan');
YuenLongList(8) = mean(year2021(:,YuenLong), 'omitnan');
YuenLongList(9) = mean(year2022(:,YuenLong), 'omitnan');

% Tuen Mun 

TuenMunList(1) = mean(year2014(:,TuenMun), 'omitnan');
TuenMunList(2) = mean(year2015(:,TuenMun), 'omitnan');
TuenMunList(3) = mean(year2016(:,TuenMun), 'omitnan');
TuenMunList(4) = mean(year2017(:,TuenMun), 'omitnan');
TuenMunList(5) = mean(year2018(:,TuenMun), 'omitnan');
TuenMunList(6) = mean(year2019(:,TuenMun), 'omitnan');
TuenMunList(7) = mean(year2020(:,TuenMun), 'omitnan');
TuenMunList(8) = mean(year2021(:,TuenMun), 'omitnan');
TuenMunList(9) = mean(year2022(:,TuenMun), 'omitnan');

% Tung Chung 

TungChungList(1) = mean(year2014(:,TungChung), 'omitnan');
TungChungList(2) = mean(year2015(:,TungChung), 'omitnan');
TungChungList(3) = mean(year2016(:,TungChung), 'omitnan');
TungChungList(4) = mean(year2017(:,TungChung), 'omitnan');
TungChungList(5) = mean(year2018(:,TungChung), 'omitnan');
TungChungList(6) = mean(year2019(:,TungChung), 'omitnan');
TungChungList(7) = mean(year2020(:,TungChung), 'omitnan');
TungChungList(8) = mean(year2021(:,TungChung), 'omitnan');
TungChungList(9) = mean(year2022(:,TungChung), 'omitnan');

% Tai Po 

TaiPoList(1) = mean(year2014(:,TaiPo), 'omitnan');
TaiPoList(2) = mean(year2015(:,TaiPo), 'omitnan');
TaiPoList(3) = mean(year2016(:,TaiPo), 'omitnan');
TaiPoList(4) = mean(year2017(:,TaiPo), 'omitnan');
TaiPoList(5) = mean(year2018(:,TaiPo), 'omitnan');
TaiPoList(6) = mean(year2019(:,TaiPo), 'omitnan');
TaiPoList(7) = mean(year2020(:,TaiPo), 'omitnan');
TaiPoList(8) = mean(year2021(:,TaiPo), 'omitnan');
TaiPoList(9) = mean(year2022(:,TaiPo), 'omitnan');

% Sha Tin North

ShaTinNorthList(1) = mean(year2014(:,ShaTinNorth), 'omitnan');
ShaTinNorthList(2) = mean(year2015(:,ShaTinNorth), 'omitnan');
ShaTinNorthList(3) = mean(year2016(:,ShaTinNorth), 'omitnan');
ShaTinNorthList(4) = mean(year2017(:,ShaTinNorth), 'omitnan');
ShaTinNorthList(5) = mean(year2018(:,ShaTinNorth), 'omitnan');
ShaTinNorthList(6) = mean(year2019(:,ShaTinNorth), 'omitnan');
ShaTinNorthList(7) = mean(year2020(:,ShaTinNorth), 'omitnan');
ShaTinNorthList(8) = mean(year2021(:,ShaTinNorth), 'omitnan');
ShaTinNorthList(9) = mean(year2022(:,ShaTinNorth), 'omitnan');

% Tap Mun

TapMunList(1) = mean(year2014(:,TapMun), 'omitnan');
TapMunList(2) = mean(year2015(:,TapMun), 'omitnan');
TapMunList(3) = mean(year2016(:,TapMun), 'omitnan');
TapMunList(4) = mean(year2017(:,TapMun), 'omitnan');
TapMunList(5) = mean(year2018(:,TapMun), 'omitnan');
TapMunList(6) = mean(year2019(:,TapMun), 'omitnan');
TapMunList(7) = mean(year2020(:,TapMun), 'omitnan');
TapMunList(8) = mean(year2021(:,TapMun), 'omitnan');
TapMunList(9) = mean(year2022(:,TapMun), 'omitnan');

% Causeway Bay

CausewayBayList(1) = mean(year2014(:,CausewayBay), 'omitnan');
CausewayBayList(2) = mean(year2015(:,CausewayBay), 'omitnan');
CausewayBayList(3) = mean(year2016(:,CausewayBay), 'omitnan');
CausewayBayList(4) = mean(year2017(:,CausewayBay), 'omitnan');
CausewayBayList(5) = mean(year2018(:,CausewayBay), 'omitnan');
CausewayBayList(6) = mean(year2019(:,CausewayBay), 'omitnan');
CausewayBayList(7) = mean(year2020(:,CausewayBay), 'omitnan');
CausewayBayList(8) = mean(year2021(:,CausewayBay), 'omitnan');
CausewayBayList(9) = mean(year2022(:,CausewayBay), 'omitnan');

% Central

CentralList(1) = mean(year2014(:,Central), 'omitnan');
CentralList(2) = mean(year2015(:,Central), 'omitnan');
CentralList(3) = mean(year2016(:,Central), 'omitnan');
CentralList(4) = mean(year2017(:,Central), 'omitnan');
CentralList(5) = mean(year2018(:,Central), 'omitnan');
CentralList(6) = mean(year2019(:,Central), 'omitnan');
CentralList(7) = mean(year2020(:,Central), 'omitnan');
CentralList(8) = mean(year2021(:,Central), 'omitnan');
CentralList(9) = mean(year2022(:,Central), 'omitnan');

% Mong Kok

MongKokList(1) = mean(year2014(:,MongKok), 'omitnan');
MongKokList(2) = mean(year2015(:,MongKok), 'omitnan');
MongKokList(3) = mean(year2016(:,MongKok), 'omitnan');
MongKokList(4) = mean(year2017(:,MongKok), 'omitnan');
MongKokList(5) = mean(year2018(:,MongKok), 'omitnan');
MongKokList(6) = mean(year2019(:,MongKok), 'omitnan');
MongKokList(7) = mean(year2020(:,MongKok), 'omitnan');
MongKokList(8) = mean(year2021(:,MongKok), 'omitnan');
MongKokList(9) = mean(year2022(:,MongKok), 'omitnan');

% RESULTS
fprintf("          2014     2015     2016     2017     2018     2019     2020     2021     2022\n")
fprintf("Central Western:");
disp(CentralWesternList)
fprintf("Eastern:");
disp(EasternList)
fprintf("Kwun Tong:");
disp(KwunTongList)
fprintf("Sham Shui Po:");
disp(ShamShuiPoList)
fprintf("Kwai Chung:");
disp(KwaiChungList)
fprintf("Tseun Wan:");
disp(TsuenWanList)
fprintf("Yuen Long:");
disp(YuenLongList)
fprintf("Tuen Mun:");
disp(TuenMunList)
fprintf("Tung Chung:");
disp(TungChungList)
fprintf("Tai Po:");
disp(TaiPoList)
fprintf("Sha Tin North:");
disp(ShaTinNorthList)
fprintf("Tap Mun:");
disp(TapMunList)
fprintf("Causeway Bay:");
disp(CausewayBayList)
fprintf("Central:");
disp(CentralList)
fprintf("Mong Kok:");
disp(MongKokList)
arrayTotal = [TaiPoList,MongKokList];
writematrix(arrayTotal)




plot(yearS,CentralWesternList)
title('Central Western Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,EasternList)
title('Eastern Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')
figure

plot(yearS,KwunTongList)
title('Kwun Tong Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,ShamShuiPoList)
title('Sham Shui Po Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,KwaiChungList)
title('Kwai Chung Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,TsuenWanList)
title('Tseun Wan Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,YuenLongList)
title('Yuen Long Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,TuenMunList)
title('Tuen Mun Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,TungChungList)
title('Tung Chung Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,TaiPoList)
title('Tai Po Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,ShaTinNorthList)
title('Sha Tin North Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,TapMunList)
title('Tap Mun Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,CausewayBayList)
title('Causeway Bay Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,CentralList)
title('Central Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')

figure

plot(yearS,MongKokList)
title('Mong Kok Air Quality')
xlabel('Years')
ylabel('Air Quality Health Index Value')