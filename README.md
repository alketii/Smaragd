# Smaragd
A class which helps with 2D and 3D arrays and numbers

Still under development, but whats here should work. I plan to add more features over time.

## Usage
```gdscript
var Smaragd = preload("res://smaragd.gd")

func _ready():
	var my_array = Smaragd.array_randi(10,2,0,20)
	print("Given array: ", my_array)
	print("Biggest number: ", Smaragd.array_max(my_array))
	print("Smallest number: ", Smaragd.array_min(my_array))
	print("Avarage: ", Smaragd.array_avarage(my_array))
```

## Methods
### array(width, height, fill)
Initialize an array and fill it with int,str,etc. 
```gdscript
var my_array = Smaragd.array(10,5,0)
```
### array_rangei(width, height, start, end)
Initialize an array with ranged ints
```gdscript
var my_array = Smaragd.array_rangei(10,2,0,20)
```

### array_randi(width, height, min, max)
Initialize an array and fill it with random integers from range
```gdscript
var my_array = Smaragd.array_randi(10,5,0,10)
```

### array_unique_randi(width, height, min, max)
Initialize an array and fill it with unique random integers from range. Currently its slow, make nmax higher.
```gdscript
var my_array = Smaragd.array_randi(10,5,0,10)
```

### array_max(array)
Get the biggest int in an array
```gdscript
var my_array = Smaragd.array_randi(10,5,0,10)
print(Smaragd.array_max(my_array))
```

### array_min(array)
Get the smallest int in an array
```gdscript
var my_array = Smaragd.array_randi(10,5,0,10)
print(Smaragd.array_min(my_array))
```

### array_avarage(array)
Get avarage of an array
```gdscript
var my_array = Smaragd.array_randi(10,5,0,10)
print(Smaragd.array_avarage(my_array))
```
