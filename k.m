function kartinka = k(pic, width, n)
    newimg = [];
    for i = 1 : width : n - width + 1
        imagepart = pic( i : (i + width - 1),1: 2350);
        j = mean(imagepart(:));
        newimg = [newimg; imagepart + (mean(pic(:) - j))];
    end
    kartinka = newimg;
end