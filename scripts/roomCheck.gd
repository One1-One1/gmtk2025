extends MeshInstance3D


func bedCheck():
		print("aaaa")
		if Weirdness.weird == true:
			Weirdness.progress
			print("bed win")
		else:
			Weirdness.progress = 0
			print("bed fail")
		
func doorCheck():
		print("bbbb")
		if Weirdness.weird == false:
			Weirdness.progress += 1
			print("door win")
		else:
			Weirdness.progress = 0
			print("door fail")
