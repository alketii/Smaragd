# Smaragd by Alket - MIT License
# Initialize an array and fill it
func array(width, height, fill):
	var array = []
	for y in range(height):
		array.append([])
		for x in range(width):
			array[y].append(fill)
	return array

# Initialize an array with ranged ints
func array_rangei(width, height, nstart, nend):
	var array = []
	var nrange = []
	var count = 0
	if width * height > nend - nstart:
		print("There aren't enough ints to fill the cells.")
		return ERR_UNCONFIGURED
	else:
		for i in range(nstart, nend):
			nrange.append(i)
		for y in range(height):
			array.append([])
			for x in range(width):
				array[y].append(0)
		for y in range(height):
			for x in range(width):
				array[y][x] = nrange[count]
				count += 1
		return array

# Initialize an array and fill it with random integers
func array_randi(width, height, nmin, nmax):
	randomize()
	var array = []
	var rand_int = 0
	if nmin >= nmax:
		print("Min int can't be bigger or equal than max int")
		return ERR_UNCONFIGURED
	else:
		for y in range(height):
			array.append([])
			for x in range(width):
				rand_int = (randi() % nmax-nmin) + nmin
				array[y].append(rand_int)
		return array
	
# Initialize an array and fill it with random unique integers
func array_unique_randi(width, height, nmin, nmax):
	randomize()
	var array = []
	var free_set = []
	var rand_ints = []
	var rand_int = 0
	var total_cells = width * height
	var count = 0
	
	if nmin >= nmax:
		print("Min int can't be bigger or equal than max int")
		return ERR_UNCONFIGURED
	elif total_cells >= nmax-nmin:
		print("There are not enough numbers to fill the cells")
		return ERR_UNCONFIGURED
	else:
		for y in range(height):
			array.append([])
			for x in range(width):
				array[y].append(0)
		
		for i in range(nmin,nmax):
			free_set.append(i)
			
		for i in range(total_cells):
			rand_int = randi() % free_set.size()
			rand_ints.append(free_set[rand_int])
			free_set.remove(rand_int)
			
		for y in range(height):
			for x in range(width):
				array[y][x] = rand_ints[count]
				count += 1
	
	return array
