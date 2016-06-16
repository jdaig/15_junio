#Utilizar pseudocodigo
students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

def best_students(students)
  best_students = []
  x, y        = 0, 0

   while y < students.length
    current_student  = students[y][x]

    if current_student[1] == 10
      best_students.push(current_student[0])
    end

    if x == (students[y].length - 1)
      x = 0
      y += 1
    else
      x += 1
    end
  end
  best_students
end 

p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]

#Pseudocódigo
#FIRST we define the students array with names and grades of students TOGETHER in arrays
#DEFINE the best_students method
#CREATE an empty array 'best_students' and set two variables (x, y) to zero
#DO WHILE y < studenths length, this to search in all the students array
#SET current student to equal to the student[x][y] in the students array
#CURRENT STUDENT is always an array with a name and a grade 
#IF current student grade is equal to 10 THEN we PUSH that student into the BEST STUDENTS
#IF x is equal to the length of the y'th array of students less one
#THEN SET x = 0 and y = y + 1
#ELSE, SET only x = x + 1
#ENDIF
#END WHILE
#RETURN BEST STUDENTS
#END METHOD
#DO test
