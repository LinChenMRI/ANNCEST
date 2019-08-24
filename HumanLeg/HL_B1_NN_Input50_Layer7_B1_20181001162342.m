function [Y,Xf,Af] = HL_B1_NN_Input50_Layer7_B1_20181001162342(X,~,~)
%HL_B1_NN_INPUT50_LAYER7_B1_20181001162342 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 01-Oct-2018 16:35:49.
% 
% [Y] = HL_B1_NN_Input50_Layer7_B1_20181001162342(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 50xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.312578413345633;0.331122425629492;0.350518783925186;0.368779782482581;0.386792199749572;0.403063701547987;0.414982800812954;0.435129748919273;0.452721363057851;0.466051600729621;0.478881199141708;0.492930400437971;0.502732397146619;0.51771747082046;0.528562523515776;0.539916339355212;0.549075954807048;0.554924243585715;0.567082609536526;0.575261107181023;0.584819332663433;0.589980874316619;0.597616588454127;0.602832400139182;0.607547050101927;0.61421253883403;0.61390870668204;0.619684040803205;0.625765004757198;0.625405662492479;0.634052067145427;0.636630254770855;0.638140449284084;0.64857449526252;0.657892103525574;0.664346855575523;0.672126244070513;0.680367170578539;0.68909512923845;0.695977638525376;0.702545167060182;0.705659035182697;0.715238405017895;0.720716818692406;0.726019974455743;0.729764999511853;0.735673955542057;0.738532234458528;0.74370420301511;0.746921657942642];
x1_step1.gain = [5.39060088379058;5.53614848297394;5.66354056570803;5.7727094091997;5.94142497173295;6.08065679985598;6.13036042139224;6.43185441407345;6.61644280593851;6.78786190836027;6.97736854023452;7.18657417573246;7.28792123849211;7.55512802691745;7.74350136106635;7.84556128830703;8.016909250741;8.10366918806582;8.35014963590612;8.49835706870634;8.71025363080748;8.82077641763058;8.94388892857632;9.03024573767654;9.13757417980138;9.19805049587507;9.00669336710598;9.23063149064435;9.36839869645563;9.17914469060954;9.45761260241175;9.48882846911945;9.43986545628059;9.66981283876492;10.0291942468612;10.3359824099274;10.6856036609555;10.9571986183649;11.3384493624709;11.7064678784945;12.0676179815921;12.1399095704512;12.6860270288791;13.0140183237073;13.4132522486522;13.7005021521145;14.0750801313339;14.152403402949;14.6237480379684;14.7231755457827];
x1_step1.ymin = -1;

% Layer 1
b1 = [0.98052238319199325201;-0.072728936515691122722;-0.33792810175372123283;0.46238972164868430426;-0.056895997699839738482;0.038406161145008194113;-0.32644369394409294971];
IW1_1 = [0.052262115565811166629 0.053971716161233987408 0.031677969876136122251 0.0092696413274767370388 0.008286686192402562337 -0.016772100448546500145 -0.0029630217425800063104 -0.021496919820818364416 -0.019832875658519186907 -0.027486367337454270521 0.0026420825121521631512 -0.0074014538106502748838 -0.002389146378081713918 -0.0089204654379369530126 0.003743762510492370469 -0.0094437635049075645266 -0.0065728232177762659777 -0.0077696922834536311445 0.0053067936043259952492 5.9870259478638344994e-05 -0.018936358987462115905 -0.024666663196031529681 -0.015108438645510965936 -0.030068678484533220563 -0.027598688228829063029 -0.017219806422280846403 -0.015835016857726862127 -0.024731804370663027642 -0.033196237708308089231 -0.017806537143895836972 -0.016381141306107901284 0.0052309497625187377501 0.008662580838274378317 -0.010859543633164554788 -0.035306583171847927272 -0.035231084852580446531 -0.032148512209576499132 -0.059393379763523948545 -0.072359028944686848428 -0.066469881511330750068 -0.086797097232393177757 -0.076816598379602238356 -0.089941659704353402183 -0.083993680782159199638 -0.070242026776273711053 -0.064353132419215364202 -0.066875532268254503365 -0.077932802289274474838 -0.039740601214806832442 -0.050251295691693127765;0.052121249019396957702 0.039432553509868503716 0.0076223490567381129573 0.011932579874437710191 -0.0064371803599525692988 -0.014345127791245805907 -0.011547668664184544685 -0.011427878125864484454 -0.022282458290692922637 -0.01760681198748650228 -0.028396642798571004179 -0.035180497135773876327 -0.02456949701700226335 -0.02449858546288053926 -0.0014276150187293597769 -0.0038735431299917058925 -0.017069239542945494059 -0.0094972700958783004554 -0.0034565951886256439905 -0.0075575694236063696921 0.014218716223109616886 0.0051317034921304497189 0.0077513731455311927696 0.01908092767618971286 0.012005221757249011708 0.013760130984779088761 0.0077540240317601066833 0.0069053553620135894181 0.010276291137154591401 -0.01709015474373833457 -0.0146589410020380468 -0.0017406035093766197321 0.00090961133033933482765 0.0082607140131751542744 0.0074790233003595996131 0.027751915757158639869 0.020455209497716536626 0.015112647666598144625 0.0026722291502032789919 0.00024702920908088477634 -0.026106936218357558455 -0.035382914655559004335 -0.03055472088727594418 -0.045563015357154845741 -0.043760208611039241866 -0.059163516335441278249 -0.06163085841116355823 -0.043896521238595061221 -0.051509666741236699583 -0.043941863468259512171;0.21651153959772947988 0.19639303637954444448 0.14963205240105362237 0.14060460737146457388 0.11428233286040127836 0.10856276116134654097 0.094794001620030099442 0.077908089158710877586 0.072093469316970609784 0.06849213400760009729 0.049316272177724995718 0.055058071678309054853 0.042570820857737681764 0.050297567279559522724 0.044566682799940471327 0.034051035363395917854 0.011850384663690812642 -0.011547764669219504757 -0.0085781237559397205406 -0.02370341539769201325 -0.040318329635761748775 -0.063470140964619323198 -0.076879729371703078855 -0.073953674506079494777 -0.069577025263196090599 -0.056966693384179707682 -0.053821209635251748837 -0.031652719425752040561 -0.021482258213034424038 -0.014445482340119114237 0.0013006619896029786038 -0.0023502300110408605276 -0.013581058206148568721 -0.015568179208216889609 -0.028778594713858310361 -0.068881701831882177767 -0.075455628126504067921 -0.085213915957608951657 -0.091604435626821273386 -0.083814719899566694772 -0.10020272288580915621 -0.08654265698476040769 -0.069745680913748553387 -0.075685597063058884792 -0.088563371826505393747 -0.073818690593014865686 -0.057947278582263041236 -0.060485801973991393243 -0.052479883934259355383 -0.054887375690557634045;-0.086194754818691959874 -0.061515563610805984451 -0.030621547610769524195 -0.017736849946308332754 -0.0076438092099990750938 0.0025468567678144926614 0.023416138581569705124 0.032295907549265152892 0.03650270471032675268 0.047608002924823353275 0.040988245563944342154 0.045934897267018583167 0.059800160514032765779 0.050609566508362374693 0.040867749053173772766 0.040054810336214489996 0.028085331678952343837 0.017065185362014644033 0.021860455360820950366 0.0075843478203818960603 0.003420884752838293779 0.0059101409181595730355 -0.0052611233452227838814 -0.0037033207275932364909 -0.025436790754454555175 -0.015486479875096471892 -0.010417728210424883478 0.0019696952993226838659 0.018790876163942409754 0.025453282534889560412 0.040187242984356420783 0.030222656874735770449 0.0068469234952557161966 -0.011745800589237249956 -0.023605925478562161945 -0.03111923423504176292 -0.02744126934159165504 -0.029497030452721614141 0.010650356241370272439 0.017539504398479253966 0.024559448656122032789 0.030859825854562792508 0.056876027685527408284 0.07159215815103643632 0.052235182645754690833 0.084180095715771577347 0.083991853271717639706 0.089438555067330838266 0.089686220129928412303 0.093919200613563180724;0.037199500776091805332 0.030657719246376089611 0.012781391810497706729 0.014512620116202100407 -0.00038071625876792312363 -0.0082451491167613837757 -7.5240670556644232716e-05 -0.0055862364509875143265 -0.021626756446491174346 -0.035196110194006084704 -0.013918128486330814259 -0.025244811799363695709 -0.021853658873000628149 -0.032411680655192703915 -0.020662134418923845669 -0.010382768557718007746 -0.0045050508639350138329 -0.0021326185425733622941 0.0042466790546280275276 0.0044218052205097901214 0.0086967592782940788404 0.005878594279098890707 0.0054190799343142841832 0.015024785930413044055 0.025496816138146503189 0.026728199691567759017 -0.0043941118119855578084 0.018494724323376645486 0.00072995712336619826988 -0.0097653167581274909204 0.003545541846702095299 -6.1937125108380307109e-05 0.0083612063462325612179 0.0026497157617136630342 0.011556695978285576321 0.011099299265846882673 0.010178656407838727535 -0.0062763608196691293706 0.0017982865809430407036 -0.00057316973145302803003 -0.013998681958257847002 -0.028382888236585746 -0.030527165028486655945 -0.030401856863044897372 -0.039936477078765943161 -0.062132935351556430048 -0.044351291575304992165 -0.055877351149037045308 -0.048229316264773836043 -0.061805819030495583177;0.093840771195755789957 0.056580163870485415678 0.042191544393664438817 0.00014943340316126666346 0.0098206186110322817723 0.0055963840600900581837 -0.0046332628941883500714 -0.013762972728889108845 -0.031420311749487943309 -0.031547629732614997089 -0.019348360461953081901 -0.030706244532596991409 -0.015954432997768747127 -0.0095393684560810959594 0.0013496639357574525056 -0.0095688387420606157291 0.0075267183227309590945 0.0089429228357551446282 0.025750491704366142154 0.021240037885356298497 0.0086941583393167105875 0.016753155851585811026 0.019194651039995107994 0.028333578095412349784 0.023812222656877827381 0.030339525132033508259 0.02036699824293215777 0.0023111683726302835636 -0.010620381076308669371 -0.016626019951304273764 -0.011624702792550097377 -0.0029425511225803632417 -0.0013156127907172333012 -0.0003715966156869830294 0.026677830412239159075 0.0053331239626675684337 -0.0036655307975933114524 -0.0029310082532215202787 -0.0085623781610427128486 -0.022888418856975928373 -0.047330090108113724578 -0.047118466303988811028 -0.054709378051548990252 -0.068681366701092441684 -0.050866951941162946715 -0.072940735271299808606 -0.057329844794169623756 -0.075804738395702300768 -0.08620497979359748042 -0.090100587406944737667;-0.1170390746610765198 -0.078378850385262613387 -0.05916830269197884129 -0.033846591786965203597 -0.010322512719721187863 0.004741261745996312553 0.0065334864159112592333 0.02624463161386927576 0.034804885894518591827 0.032023843664591399027 0.030947632898609137714 0.030434367286925261692 0.022110013782244222064 0.016854909071858888148 0.012517522938103736729 0.0049748321542044636467 -0.014253891752793856201 -0.024377769703359839643 -0.03322657930015381067 -0.039047510662565301787 -0.063903138951295221371 -0.062093203550749778707 -0.081460579405365204919 -0.07646075774371718925 -0.07250294593076765659 -0.057969712016470761884 -0.067653153184516742757 -0.055213737628801613788 -0.053515537810569634158 -0.059838762799370261158 -0.042759386196757454002 -0.07873157218790741152 -0.11894033964651737345 -0.14021046089359698317 -0.14601825595084830245 -0.16136446206768126355 -0.13293941450446317143 -0.10938154969174454512 -0.072223976436299006099 -0.023761386813802829604 0.0057954662799056923597 0.042877657709439902234 0.083938296719527516476 0.11450661851586321771 0.1631887409502009445 0.1756984147056278589 0.21824415926275750333 0.2335895952425439126 0.2764302359025593292 0.26931839459194850672];

% Layer 2
b2 = -0.15672071716779170658;
LW2_1 = [0.70450200301700016681 0.30037430034321194183 0.51829746646107233143 -0.46850375962155776932 0.2854623652412741075 0.37162458057488828578 -0.55262326068399170165];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 10.0002544427456;
y1_step1.xoffset = 0.500002084541379;

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX
  X = {X};
end

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
  Q = size(X{1},2); % samples/series
else
  Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS

    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a2,y1_step1);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX
  Y = cell2mat(Y);
end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
  y = bsxfun(@minus,x,settings.xoffset);
  y = bsxfun(@times,y,settings.gain);
  y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
  a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
  x = bsxfun(@minus,y,settings.ymin);
  x = bsxfun(@rdivide,x,settings.gain);
  x = bsxfun(@plus,x,settings.xoffset);
end
