%%%Mohsen Abyari 
%%%Diagnosis ADHD by EEG signal 10-20 std and 19 channel
clc
clear all
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                            % ADHD Children
  Path = 'C:\Users\Arya\Documents\MATLAB\finalcode\ADHD\*.mat';
Files = dir(Path);  
for i=1:length(Files)
        fn = [Path(1:end-5) Files(i,1).name];
   x=load(fn);
   value = struct2cell(x);
           y=value{1};
            
end
fp1=y(:,1);
fp2=y(:,2);
f3=y(:,3);
f4=y(:,4);
c3=y(:,5);
c4=y(:,6);
p3=y(:,7);
p4=y(:,8);
o1=y(:,9);
o2=y(:,10);
f7=y(:,11);
f8=y(:,12);
t7=y(:,13);
t8=y(:,14);
p7=y(:,15);
p8=y(:,16);
fz=y(:,17);
cz=y(:,18);
pz=y(:,19);

for j=1:19
                    binned_signal=fp1;
                                %%%Denoise 
      [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
      
end
for j=1:19
       binned_signal=fp2;
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
         
      
end
for j=1:19
               
      binned_signal=f3;
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
         
      
end
for j=1:19
               
       binned_signal=f4;
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
      
end
for j=1:19
                
       binned_signal=c3;
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
      
end
for j=1:19
       binned_signal=c4;
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
end
for j=1:19
                
      binned_signal= p3;
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
end
for j=1:19
                
       binned_signal=p4;
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
      
end
for j=1:19
                
      binned_signal= o1;
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
      
end
for j=1:19
                
       binned_signal=o2;
                                %%%Denoise 
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
end
for j=1:19
                
      binned_signal= f7;
                                %%%Denoise 
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
      
end
for j=1:19
               
      binned_signal= f8;
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
      
end
for j=1:19
                
       binned_signal=t7;
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
      
end
for j=1:19
              
       binned_signal= t8;
   [C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
      
end
for j=1:19
                
       binned_signal=p7;
                                %%%Denoise 
[C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
      
end
for j=1:19
              
       binned_signal=p8;
[C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
         
      
end
for j=1:19
                     binned_signal=fz;
[C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
      
end
for j=1:19
              
       binned_signal=cz;
[C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
end
for j=1:19
binned_signal=pz;
[C,L]=wavedec(binned_signal,4,'db10');
[thr,sorh,keepapp]=ddencmp('den','wv',binned_signal);
binned_signal=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
          EEG1=1e22*(binned_signal/mean(binned_signal));
end






% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     %%%          control type 
%            Path = 'C:\Users\Arya\Documents\MATLAB\finalcode\control\*.mat';
% FIles = dir(Path);  
% for i=1:length(FIles)
%         fn = [Path(1:end-5) FIles(i,1).name];
%   x=load(fn);
%    value = struct2cell(x);
%            y=value{1};
%             for j=1:19
%        fp1=y(:,1);
%          
%            [C,L]=wavedec(c3,4,'db10');
% [thr,sorh,keepapp]=ddencmp('den','wv',c3);
% c3=wdencmp('gbl',C,L,'db10',4,thr,sorh,keepapp);
%                                    
%                 
%                 [Ea,Ed] = wenergy(C,L);
%                
%          feature_control(i,:)=[Ea Ed]; 
%        end
% end
% 
% 
% input=[feature_control;feature_ADHD];
% output=[zeros(60,1);ones(61,1)];
% mix =[input output];
% 
% 
