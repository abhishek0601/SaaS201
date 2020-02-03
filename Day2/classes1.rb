class Player
	def set_name(name)
		@name=name
	end
	def get_name
		return @name 
	end
	def set_team(team)
		@team=team
	end	
	def get_team
		return @team
	end
	def set_country(country)
		@country=country
	end
	def get_country
		@country
	end
	def set_position(position)
		@position=position
	end
	def get_position
		@position
	end	
end

s1=Player.new
s1.set_name("Paul Pogba")
s1.set_team("Manchester United")
s1.set_country("France")
s1.set_position("Mid Fielder")
 
puts "Player INFO:","Name:"+s1.get_name,"Club:"+s1.get_team,"Position:"+s1.get_position,"Country:"+s1.get_country
