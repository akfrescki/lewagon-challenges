# Start to code from this file
# This file will be used to sort the students in the wagon. 
# You can use the method `sort` or `sort_by` to sort the students alphabetically. 
# Remember that you can use the method `downcase` to ignore the case of the letters when sorting.
# Use downcase to ignore the case of the letters when sorting, 
# ex if you have "Alice" and "bob", "Alice" should come before "bob" because "alice" comes before "bob" in the alphabet.
def wagon_sort(students)
    # create a variable to store the sorted students
    # the condiiton will be always singular because we will always have one wagon to sort by the time
    sorted_students = students.sort_by { |student| student.downcase }
    # with this variable we will store the sorted students and re use it in the interface.rb file to display the sorted students to the user
    return sorted_students
end