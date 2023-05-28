function answer = minet2(pic, start_x, start_y, size, start_x2, start_y2, size2)
    square = pic(start_x: start_x + size, start_y: start_y + size)
    square2 = pic(start_x2: start_x2 + size2, start_y2: start_y2 + size2)
    subplot(1,2,1), imshow(square)
    subplot(1,2,2), imshow(square2)
    m = mean(square(:))
    m2 = mean(square2(:))
    answer = m - m2
end