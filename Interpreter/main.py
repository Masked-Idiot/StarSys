file = open("main.star", "r")
write = open("result.py", "w")
lines = file.readlines()
write_list = []

write_line = ""
for i in lines:
	for j in i:
		if j == "{":
			write_line += ":"
		elif j == "}":
			write_line += ""
		elif j == "^":
			write_line += "**"
		else:
			write_line += j
	write_list.append(write_line)
	write_line = ""

for i in write_list:
	write.write(i)

file.close()
write.close()

import result
result.main()