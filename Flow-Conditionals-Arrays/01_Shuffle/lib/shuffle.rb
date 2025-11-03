def shuffle(array)
  # it will first clone the array to avoid modifying the original array
  a = array.clone
  # initialize an empty array to hold the shuffled elements
  b = []

  while a.length > 0
    random_index = rand(a.length)

    random_element = a[random_index]

    b << random_element

    a.delete_at(random_index)
  end

  b
end
