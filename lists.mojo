def main():
	list1 : List[Int] = [1,34,-54,28]
	print(list1)
	list1.append(-987)
	print(list1)
	print("Popped : ", list1.pop())
	print("First element: ", list1[0])
	print("Last element: ", list1[-1])
	var nested : List[List[Int]] = [[1,0,0], [0,1,0], [0,0,1]]
	var val1 : Int = 209
	var val2 : Int = val1.copy()
	print("Value 1: ", val1, "\tValue 2 : ", val2)
	print(nested)
	print(len(nested))