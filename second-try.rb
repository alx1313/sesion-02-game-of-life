class Universe
    @@planet[
        [0,0,0,0],
        [0,0,0,0],
        [0,0,0,0],
        [0,0,0,0]
    ]
    @@neighbor_left = 0
    @@neighbor_right = 0
    @@neighbor_up = 0
    @@neighbor_down = 0
end
class Reaper
    def determine_life_or_death(reaper,x,y)
        if reaper > 3 && Universe.planet[x,y] == 1
            Universe.planet[x,y] = 0
        elsif reaper >= 3 && Universe.planet[x,y] == 0
            Universe.planet[x,y] = 1
        elsif reaper < 3 && Universe.planet[x,y] == 1
            if reaper >= 1 
                Universe.planet[x,y] = 0
            else
                Universe.planet[x,y] = 1
            end
        elsif reaper < 3 && Universe.planet[x,y] = 0
            Universe.planet[x,y] = 0       
        end
    end
class Search_of_life
    @@coord_x = 0
    @@coord_y = 0
    @@colony = 0
    @@analizer = Universe.new
    
    def get_life_center(x,y)
        Universe.neighbor_left = planet[x-1,y]
        Universe.neighbor_right= planet[x+1,y]
        Universe.neighbor_up = planet[x,y-1]
        Universe.neighbor_down = planet[x,y+1]
        Search_of_life.colony = Universe.neighbor_down + Universe.neighbor_up + Universe.neighbor_left + Universe.neighbor_right
        new_reaper = Reaper.new
        new_reaper.determine_life_or_death(Search_of_life.colony,x,y)
        
    def get_life_side_east(x,y)
        Universe.neighbor_right = Universe.planet[x+1,y]
        Universe.neighbor_left = Universe.planet[3,y]
        Universe.neighbor_up = Universe.planet[x,y-1]
        Universe.neighbor_down = Universe.planet[x,y+1]
        Search_of_life.colony = Universe.neighbor_down + Universe.neighbor_up + Universe.neighbor_right + Universe.neighbor_left
        new_reaper = Reaper.new
        new_reaper.determine_life_or_death(Search_of_life.colony,x,y)

    end
    def get_life_side_west(x,y)
        Universe.neighbor_left = Universe.planet[x-1,y]
        Universe.neighbor_right = Universe.planet[0,y]
        Universe.neighbor_down = Universe.planet[x,y+1]
        Universe.neighbor_up = Universe.planet[x,y-1]
        Search_of_life.colony = Universe.neighbor_down + Universe.neighbor_up + Universe.neighbor_left + Universe.neighbor_right
        new_reaper = Reaper.new
        new_reaper.determine_life_or_death(Search_of_life.colony,x,y)
    end
    def get_life_side_north(x,y)
        Universe.neighbor_left = Universe.planet[x-1,y]
        Universe.neighbor_right = Universe.planet[x,y]
        Universe.neighbor_down = Universe.planet[x,y+1]
        Universe.neighbor_up = Universe.planet[x,3]
        Search_of_life.colony = Universe.neighbor_down + Universe.neighbor_up + Universe.neighbor_left + Universe.neighbor_right
        new_reaper = Reaper.new
        new_reaper.determine_life_or_death(Search_of_life.colony,x,y)
    end
    def get_life_side_south(x,y)
        Universe.neighbor_left = Universe.planet[x-1,y]
        Universe.neighbor_right = Universe.planet[0,y]
        Universe.neighbor_down = Universe.planet[x,0]
        Universe.neighbor_up = Universe.planet[x,y-1]
        Search_of_life.colony = Universe.neighbor_down + Universe.neighbor_up + Universe.neighbor_left + Universe.neighbor_right
        new_reaper = Reaper.new
        new_reaper.determine_life_or_death(Search_of_life.colony,x,y)
    end
    def get_life_corners(x,y)
        if x == 0 && y == 0
            Universe.neighbor_up = Universe.planet[3,y]
            Universe.neighbor_down = Universe.planet[x,y+1]
            Universe.neighbor_left = Universe.planet[x,3]
            Universe.neighbor_right = Universe.planet[x+1,y]
            Search_of_life.colony = Universe.neighbor_down + Universe.neighbor_up + Universe.neighbor_left + Universe.neighbor_right
            new_reaper = Reaper.new
            new_reaper.determine_life_or_death(Search_of_life.colony,x,y)
        elsif x == 3 && y == 0
            Universe.neighbor_up = Universe.planet[3,y]
            Universe.neighbor_down = Universe.planet[x,y+1]
            Universe.neighbor_left = Universe.planet[x,y-1]
            Universe.neighbor_right = Universe.planet[x,0]
            Search_of_life.colony = Universe.neighbor_down + Universe.neighbor_up + Universe.neighbor_left + Universe.neighbor_right
            new_reaper = Reaper.new
            new_reaper.determine_life_or_death(Search_of_life.colony,x,y)
    end    
    def detection
        for Search_of_life.coord_x in 0..4
            for Search_of_life.coord_y in 0..4
                if Search_of_life.coord_x == 0
                    if Search_of_life.coord_y == 0
                    
                    elsif Search_of_life.coord_y > 0 && Search_of_life.coord_y < 3

                    else
                    
                    end
                elsif Search_of_life.coord_x > 0 && Seach_of_life.coord_x < 3
                    if Search_of_life.coord_y == 0
                    
                    elsif Search_of_life.coord_y > 0 && Search_of_life.coord_y < 3

                    else

                    end
                else
                    if Search_of_life.coord_y == 0

                    elsif Search_of_life.coord_y > 0 && Search_of_life.coord_y < 3
                    
                    else

                    end
                end
end

