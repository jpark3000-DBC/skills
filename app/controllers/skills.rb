get '/skills' do





  erb :skills
end

post '/skills' do
  user = User.find(session[:user_id])

  skill = Skill.create(name: params[:skill], context: params[:context])

  proficiency = Proficiency.create(years: params[:years],
                                   formal: params[:formal],
                                   user_id: user.id,
                                   skill_id: skill.id)

  redirect to('/')

end
