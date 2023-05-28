function answer = minet(pic, start_x, start_y, size)
    m = mean(pic(:))
    square = pic(start_x: start_x + size, start_y: start_y + size)
    imshow(square)
    m1 = mean(square(:))
    answer = m - m1
end