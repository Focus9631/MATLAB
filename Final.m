random_pic = randi(255,100,"double");
Sinus=sin(random_pic)/random_pic;

Fur=fft2(Sinus);
Fur2=log(abs(Fur));
plot(Fur2)