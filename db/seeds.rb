require_relative('../models/student')
require_relative('../models/house')

house1 = House.new({'name' => 'gryffindor'})
house2 = House.new({'name' => 'hufflepuff'})
house3 = House.new({'name' => 'ravenclaw'})
house4 = House.new({'name' => 'slytherin'})

house1.save
house2.save
house3.save
house4.save

student1 = Student.new({
  'first_name' => 'hermione',
  'last_name' => 'granger',
  'house_id' => house1.id,
  'age' => 14 })
student2 = Student.new({
  'first_name' => 'harry',
  'last_name' => 'potter',
  'house_id' => house1.id,
  'age' => 14 })
student3 = Student.new({
  'first_name' => 'ron',
  'last_name' => 'weasley',
  'house_id' => house1.id,
  'age' => 14 })
student4 = Student.new({
  'first_name' => 'draco',
  'last_name' => 'malfoy',
  'house_id' => house4.id,
  'age' => 14 })
student5 = Student.new({
  'first_name' => 'cho',
  'last_name' => 'chang',
  'house_id' => house3.id,
  'age' => 16 })
student6 = Student.new({
  'first_name' => 'cedric',
  'last_name' => 'diggory',
  'house_id' => house2.id,
  'age' => 16 })
student7 = Student.new({
  'first_name' => 'luna',
  'last_name' => 'lovegood',
  'house_id' => house3.id,
  'age' => 13 })
student8 = Student.new({
  'first_name' => 'penelope',
  'last_name' => 'clearwater',
  'house_id' => house3.id,
  'age' => 17 })
student9 = Student.new({
  'first_name' => 'pansy',
  'last_name' => 'parkinson',
  'house_id' => house4.id,
  'age' => 14 })
student10 = Student.new({
  'first_name' => 'hannah',
  'last_name' => 'abbott',
  'house_id' => house2.id,
  'age' => 15 })
student11 = Student.new({
  'first_name' => 'susan',
  'last_name' => 'bones',
  'house_id' => house2.id,
  'age' => 13 })
student12 = Student.new({
  'first_name' => 'millicent',
  'last_name' => 'bulstrode',
  'house_id' => house4.id,
  'age' => 14 })

student1.save
student2.save
student3.save
student4.save
student5.save
student6.save
student7.save
student8.save
student9.save
student10.save
student11.save
student12.save
