def calculate(pyramid)
  i = pyramid.size - 1
  
  while i > 0
    j = 0
    while j < pyramid[i].size - 1
      pyramid[i-1][j] += pyramid[i][j] > pyramid[i][j+1] ? pyramid[i][j] : pyramid[i][j+1]
      j += 1
    end
    i -= 1
  end

  pyramid[0][0]
end
