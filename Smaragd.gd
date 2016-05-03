# Smaragd by Alket - MIT License
# Initialize a array and fill it
func array(width,height,fill):
	var array = []
	for y in range(height):
		array.append([])
		for x in range(width):
			array[y].append(fill)
	return array

# Initialize a array and fill it with random integers
func array_randi(width,height,nmin,nmax):
	randomize()
	var array = []
	var rand_int = 0
	if nmin >= nmax:
		print("Min int can't be bigger or equal than max int")
		return 1
	else:
		for y in range(height):
			array.append([])
			for x in range(width):
				rand_int = (randi() % nmax-nmin) + nmin
				array[y].append(rand_int)
		return array
	
# Initialize a array and fill it with random unique integers
func array_unique_randi(width,height,nmin,nmax):
	randomize()
	var array = []
	var rand_int = 0
	var total_cells = width * height
	var count = 0
	var rand_ints = []
	var is_used = false
	
	if nmin >= nmax:
		print("Min int can't be bigger or equal than max int")
		return 1
	elif total_cells >= nmax-nmin:
		print("There are not enough numbers to fill the cells")
		return 1
	else:
		for y in range(height):
			array.append([])
			for x in range(width):
				array[y].append(0)
		
		while total_cells > 0:
			rand_int = (randi() % nmax-nmin) + nmin
			for i in rand_ints:
				if rand_int == i:
					is_used = true
			if not is_used:
				rand_ints.append(rand_int)
				total_cells -= 1
		
		for y in range(height):
			for x in range(width):
				array[y][x] = rand_ints[count]
				count += 1
	
	return array
