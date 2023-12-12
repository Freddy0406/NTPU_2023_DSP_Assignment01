clc;
clear;
close all;

o_100hz = load('100hz.txt');
set_100hz_4000_tao = load('100hz{4000}.txt');
set_100hz_8000_tao = load('100hz{8000}.txt');
set_100hz_16000_tao = load('100hz{16000}.txt');
N = length(set_100hz_4000_tao(:,1));

o_400hz = load('400hz.txt');
set_400hz_4000_tao = load('400hz{4000}.txt');
set_400hz_8000_tao = load('400hz{8000}.txt');
set_400hz_16000_tao = load('400hz{16000}.txt');

o_3000hz = load('3000hz.txt');
set_3000hz_4000_tao = load('3000hz{4000}.txt');
set_3000hz_8000_tao = load('3000hz{8000}.txt');
set_3000hz_16000_tao = load('3000hz{16000}.txt');

x_min = 19000;
x_max = 21000;

%%========================================%%
figure()
subplot(2,1,1)
plot(set_100hz_4000_tao(:,1));
hold on
%plot(o_100hz(:,1));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('100Hz-{1/4000}-Real');

subplot(2,1,2)
plot(set_100hz_4000_tao(:,2));
hold on
%plot(o_100hz(:,2));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('100Hz-{1/4000}-Imag');

%%========================================%%
figure(2)
subplot(2,1,1)
plot(set_100hz_8000_tao(:,1));
hold on
%plot(o_100hz(:,1));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('100Hz-{1/8000}-Real');

subplot(2,1,2)
plot(set_100hz_8000_tao(:,2));
hold on
%plot(o_100hz(:,2));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('100Hz-{1/8000}-Imag');

%%========================================%%
figure(3);
subplot(2,1,1)
plot(set_100hz_16000_tao(:,1));
hold on
%plot(o_100hz(:,1));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('100Hz-{1/16000}-Real');

subplot(2,1,2)
plot(set_100hz_16000_tao(:,2));
hold on
%plot(o_100hz(:,2));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('100Hz-{1/16000}-Imag');



%%========================================%%
figure(4)
subplot(2,1,1)
plot(set_400hz_4000_tao(:,1));
hold on
%plot(o_400hz(:,1));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('400Hz-{1/4000}-Real');

subplot(2,1,2)
plot(set_400hz_4000_tao(:,2));
hold on
%plot(o_400hz(:,2));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('400Hz-{1/4000}-Imag');

%%========================================%%
figure(5)
subplot(2,1,1)
plot(set_400hz_8000_tao(:,1));
hold on
%plot(o_400hz(:,1));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('400Hz-{1/8000}-Real');

subplot(2,1,2)
plot(set_400hz_8000_tao(:,2));
hold on
%plot(o_400hz(:,2));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('400Hz-{1/8000}-Imag');

%%========================================%%
figure(6);
subplot(2,1,1)
plot(set_400hz_16000_tao(:,1));
hold on
%plot(o_400hz(:,1));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('400Hz-{1/16000}-Real');

subplot(2,1,2)
plot(set_400hz_16000_tao(:,2));
hold on
%plot(o_400hz(:,2));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('400Hz-{1/16000}-Imag');





%%========================================%%
figure(7)
subplot(2,1,1)
plot(set_3000hz_4000_tao(:,1));
hold on
%plot(o_3000hz(:,1));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('3000Hz-{1/4000}-Real');

subplot(2,1,2)
plot(set_3000hz_4000_tao(:,2));
hold on
%plot(o_3000hz(:,2));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('3000Hz-{1/4000}-Imag');

%%========================================%%
figure(8)
subplot(2,1,1)
plot(set_3000hz_8000_tao(:,1));
hold on
%plot(o_3000hz(:,1));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('3000Hz-{1/8000}-Real');

subplot(2,1,2)
plot(set_3000hz_8000_tao(:,2));
hold on
%plot(o_3000hz(:,2));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('3000Hz-{1/8000}-Imag');

%%========================================%%
figure(9);
subplot(2,1,1)
plot(set_3000hz_16000_tao(:,1));
hold on
%plot(o_3000hz(:,1));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('3000Hz-{1/16000}-Real');

subplot(2,1,2)
plot(set_3000hz_16000_tao(:,2));
hold on
%plot(o_3000hz(:,2));
xlim([x_min x_max]);
ylim([-1 1]);
xlabel("n");
ylabel("Amplitude");
title('3000Hz-{1/16000}-Imag');