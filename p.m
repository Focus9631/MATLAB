function kartinka = p(pic, width, n)
    newimg = [];
    for i = 1 : width : n - width + 1
        imagepart = pic(1: 990,  i : (i + width - 1));
        j = mean(imagepart(:));
        newimg = [newimg imagepart + (mean(pic(:) - j))];
    end
    kartinka = newimg;
end