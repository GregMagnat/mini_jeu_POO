class Player   #Création du joueur 1
    attr_accessor :name, :life_points  #Avec nom et PV
    
    def initialize(name, life_points = 10)  #J'enregistre ça en instant grace à Init
        @name = name
        @life_points = life_points
    end

    def show_state  #J'affiche un petit message d'amour concernant mes players 
        puts " #{@name} possède #{@life_points} points de vie"
    end

    def gets_damage(take_dommage)  #Message en cas de dmg - mort héhé
        @life_points -= take_dommage    #J'assigne une soustraction avec -=
        @life_points <= 0 ? (puts " #{@name} est MORT (Bolosse)!") : show_state #L'opérateur ternaire ? (...) : permet de controler grace au <=, et si ce n'est pas bon : renvoi ailleur 
    end

    def attacks(other)
        puts "Notre cher #{@name} attaque le joueur #{other.name}"
        damage = compute_damage   #création d'une variable de damage avec la méthode comput pour un damage aléatoire
        other.gets_damage(damage)  #mon joueur attaqué (@name.gets_damage) prend des damages grace (damage)
        puts " #{damage} points de dommages dans la tronche, iiiich !!! "
    end

    def compute_damage
        return rand(1..6)
    end
    

end