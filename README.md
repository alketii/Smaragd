# Smaragd
A class which helps with arrays and numbers

Still under development, but whats there should work

## Usage
```gdscript
var Smaragd = preload("res://smaragd.gd")

func _ready():
	var my_array = Smaragd.array_randi(5,5,0,8)
	print(my_array)
```

## Methods
### array(width,height,fill)
Initialize an array and fill it with int,str,etc. 
```gdscript
var my_array = Smaragd.array(10,5,0)
```

### array_randi(width,height,nmin,nmax)
Initialize an array and fill it with random integers from range
```gdscript
var my_array = Smaragd.array_randi(10,5,0,10)
```

### array_unique_randi(width,height,nmin,nmax)
Initialize an array and fill it with unique random integers from range. Currently its slow, make nmax higher.
```gdscript
var my_array = Smaragd.array_randi(10,5,0,10)
```
