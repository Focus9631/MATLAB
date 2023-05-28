function jarkost = jj(pic, width, n)
    i = pic(1: 998, n * width : (n+1) * width);
    jarkost = mean(i(:));
end