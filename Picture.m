x = randn(100);
max_value = max(x);
z= x ./ max_value;
func_1 = z.^2;

start_value = 1;
end_value = 4;
h = (end_value-start_value)/99;
y = meshgrid(start_value:h:end_value,start_value:h:end_value);
func_2 = sin(y)./y;

func = func_1 .* func_2;

figure(1);
imshow(func);

figure(2);
imshow(func_2);

figure(3);
Sum_Vector = sum(func);
plot(Sum_Vector);


%%
figure(4);
Furie = abs(fft(Sum_Vector));
plot(Furie);

filtr = highpass(Furie,0.5);
figure(5);
plot(filtr);

P = ifft(filtr);
figure(6);
plot(P);
