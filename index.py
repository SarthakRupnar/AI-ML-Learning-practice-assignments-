while True:
    user_input = input("1.Add student\n2.View all students\n3.Search student\n4.Delete student\n5.Exit\nEnter Your Choice 1,2,3,4,5,6 : ")
    if user_input == "1":
        Iname = input("Enter your Name:")
        Iid = int(input("Enter ID:"))
        Icourse = input("Enter your Course:")

        info = {
        "name": Iname,
        "id": Iid,
        "course": Icourse
        }

        with open("info.txt", "a") as f:
            f.write(f"student id:{Iid} info:{info}\n")

    elif user_input == "2":
        with open("info.txt", "r") as f:
            content = f.read()
            print(content)
            
    
    elif user_input =="3":
        name_search = input("Enter Name:")
        with open("info.txt", "r") as f:
            for line in f:
                if name_search in line:
                    print(line)
            
    elif user_input =="4":
        name_search = input("Enter Name:")
        with open("info.txt", "r") as f:
            lines = f.readlines()
        with open("info.txt", "w") as f:
            for line in lines:
                if name_search not in line:
                    f.write(line)
        
    elif user_input =="5":
        break
    
    else:
        print("Please Make a Valid Choice")
        
print("THANK YOU....")
