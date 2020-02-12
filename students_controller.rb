require('sinatra')
# require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')
# also_reload('./models/*')


# index
get '/students' do
  @students = Student.all()
  erb( :index )
end


# new
# /students/new needs to be above /students/:id - coin slot thing. Small coin first (most precise/specific) then the catch all (/anything) last, otherwise /new will try fit into /:id and never get run. get and post can be distinguished by method so get /students can exist alongside post /students.

get '/students/new' do
  @houses = House.all
  erb ( :new )
end

# show
get '/students/:id' do
  @student = Student.find(params[:id])
  house_id = @student.house_id
  student_house = House.find(house_id)
  @student_house_name = student_house.name
  erb ( :show )
end


# create

post '/students' do
  @student = Student.new( params )

  @student.save()
  erb ( :create )
end

# edit

get '/students/:id/edit' do
  @houses = House.all
  @student = Student.find(params[:id])
  erb ( :edit)
end

# update

post '/students/:id' do

  Student.new(params).update
  redirect to '/students'
end

# destroy

post '/students/:id/delete' do
  student = Student.find(params[:id])
  student.delete
  erb(:delete)
end
