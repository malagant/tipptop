# admin user erstellen

u = User.create(:email => "admin@tipptop.net", :password => "topsecret", :password_confirmation => "topsecret", :role_name => 'admin')
u.confirm!
u.reset_perishable_token!

# Einen normalen user anlegen
guest = User.create(:email => "bla@bla.com", :password => "topsecret", :password_confirmation => "topsecret")
guest.confirm!
guest.reset_perishable_token!

# Einen gamer anlegen
mjohann = User.create(:email => "mjohann@rails-experts.com", :password => "topsecret", :password_confirmation => "topsecret")
gamer = mjohann.build_gamer(:firstname => "Michael", :lastname => "Johann", :street1 => "Papeneschstr. 27a", :zipcode => "48565", :city => "Steinfurt", :country => "Deutschland")
mjohann.role_name = 'gamer'
gamer.save!

#Gruppen erstellen
gruppe_a = Group.create!(:name => 'A')

gruppe_a.teams << A1 = Team.create!( :position => 'A1', :country => 'SŸd Afrika', :flag_uri => 'south_africa')
gruppe_a.teams << A2 = Team.create!( :position => 'A2')
gruppe_a.teams << A3 = Team.create!( :position => 'A3')
gruppe_a.teams << A4 = Team.create!( :position => 'A4')


gruppe_b = Group.create!(:name => 'B')

gruppe_b.teams << B1 = Team.create!( :position => 'B1')
gruppe_b.teams << B2 = Team.create!( :position => 'B2')
gruppe_b.teams << B3 = Team.create!( :position => 'B3')
gruppe_b.teams << B4 = Team.create!( :position => 'B4')

gruppe_c = Group.create!(:name => 'C')

gruppe_c.teams << C1 = Team.create!( :position => 'C1')
gruppe_c.teams << C2 = Team.create!( :position => 'C2')
gruppe_c.teams << C3 = Team.create!( :position => 'C3')
gruppe_c.teams << C4 = Team.create!( :position => 'C4')


gruppe_d = Group.create!(:name => 'D')

gruppe_d.teams << D1 = Team.create!( :position => 'D1')
gruppe_d.teams << D2 = Team.create!( :position => 'D2')
gruppe_d.teams << D3 = Team.create!( :position => 'D3')
gruppe_d.teams << D4 = Team.create!( :position => 'D4')


gruppe_e = Group.create!(:name => 'E')

gruppe_e.teams << E1 = Team.create!( :position => 'E1')
gruppe_e.teams << E2 = Team.create!( :position => 'E2')
gruppe_e.teams << E3 = Team.create!( :position => 'E3')
gruppe_e.teams << E4 = Team.create!( :position => 'E4')


gruppe_f = Group.create!(:name => 'F')

gruppe_f.teams << F1 = Team.create!( :position => 'F1')
gruppe_f.teams << F2 = Team.create!( :position => 'F2')
gruppe_f.teams << F3 = Team.create!( :position => 'F3')
gruppe_f.teams << F4 = Team.create!( :position => 'F4')


gruppe_g = Group.create!(:name => 'G')

gruppe_g.teams << G1 = Team.create!( :position => 'G1')
gruppe_g.teams << G2 = Team.create!( :position => 'G2')
gruppe_g.teams << G3 = Team.create!( :position => 'G3')
gruppe_g.teams << G4 = Team.create!( :position => 'G4')


gruppe_h = Group.create!(:name => 'H')

gruppe_h.teams << H1 = Team.create!( :position => 'H1')
gruppe_h.teams << H2 = Team.create!( :position => 'H2')
gruppe_h.teams << H3 = Team.create!( :position => 'H3')
gruppe_h.teams << H4 = Team.create!( :position => 'H4')

stadia = Stadium.create!([
        {:name => 'Johannesburg (Soccer City)', :city => 'Johannesburg'},
        {:name => 'Kapstadt', :city => 'Kapstadt'},
        {:name => 'Tshwane/Pretoria', :city => 'Tshwane/Pretoria'},
        {:name => 'Polokwane', :city => 'Polokwane'},
        {:name => 'Rustenburg', :city => 'Rustenburg'},
        {:name => 'Mangaung/Bloemfontein', :city => 'Mangaung/Bloemfontein'},
        {:name => 'Johannesburg (Ellis-Park-Stadion)', :city => 'Johannesburg'},
        {:name => 'Nelson Mandela Bay/Port Elizabeth', :city => 'Nelson Mandela Bay/Port Elizabeth'},
        {:name => 'Durban', :city => 'Durban'},
        {:name => 'Nelspruit', :city => 'Nelspruit'},
        ])

# Gruppe A Spiele

game = Game.new( :gametime => '2010-06-11T00:00:00Z' )
game.stadium = Stadium.find_by_name('Johannesburg (Soccer City)')
game.team_one = A1
game.team_two = A2
game.group = gruppe_a
game.save!

game = Game.new( :gametime => '2010-06-11T00:00:00Z' )
game.stadium = Stadium.find_by_name('Kapstadt')
game.team_one = A3
game.team_two = A4
game.group = gruppe_a
game.save!

game = Game.new( :gametime => '2010-06-16T00:00:00Z')
game.stadium = Stadium.find_by_name('Tshwane/Pretoria')
game.team_one = A1
game.team_two = A3
game.group = gruppe_a
game.save!

game = Game.new( :gametime => '2010-06-17T00:00:00Z')
game.stadium = Stadium.find_by_name('Polokwane')
game.team_one = A4
game.team_two = A2
game.group = gruppe_a
game.save!

game = Game.new( :gametime => '2010-06-22T00:00:00Z')
game.stadium = Stadium.find_by_name('Rustenburg')
game.team_one = A2
game.team_two = A3
game.group = gruppe_a
game.save!

game = Game.new( :gametime => '2010-06-22T00:00:00Z')
game.stadium = Stadium.find_by_name('Mangaung/Bloemfontein')
game.team_one = A4
game.team_two = A1
game.group = gruppe_a
game.save!

# Gruppe B Spiele
game = Game.new(:gametime => '2010-06-12T00:00:00Z')
game.stadium = Stadium.find_by_name('Johannesburg (Ellis-Park-Stadion)')
game.team_one = B1
game.team_two = B2
game.group = gruppe_b
game.save!

game = Game.new(:gametime => '2010-06-12T00:00:00Z')
game.stadium = Stadium.find_by_name('Nelson Mandela Bay/Port Elizabeth')
game.team_one = B3
game.team_two = B4
game.group = gruppe_b
game.save!

game = Game.new(:gametime => '2010-06-17T00:00:00Z')
game.stadium = Stadium.find_by_name('Johannesburg (Soccer City)')
game.team_one = B1
game.team_two = B3
game.group = gruppe_b
game.save!

game = Game.new(:gametime => '2010-06-17T00:00:00Z')
game.stadium = Stadium.find_by_name('Mangaung/Bloemfontein')
game.team_one = B4
game.team_two = B2
game.group = gruppe_b
game.save!

game = Game.new(:gametime => '2010-06-22T00:00:00Z')
game.stadium = Stadium.find_by_name('Durban')
game.team_one = B2
game.team_two = B3
game.group = gruppe_b
game.save!

game = Game.new(:gametime => '2010-06-22T00:00:00Z')
game.stadium = Stadium.find_by_name('Polokwane')
game.team_one = B4
game.team_two = B1
game.group = gruppe_b
game.save!

# Gruppe C Spiele
game = Game.new(:gametime => '2010-06-12T00:00:00Z')
game.stadium = Stadium.find_by_name('Rustenburg')
game.team_one = C1
game.team_two = C2
game.group = gruppe_c
game.save!

game = Game.new(:gametime => '2010-06-13T00:00:00Z')
game.stadium = Stadium.find_by_name('Polokwane')
game.team_one = C3
game.team_two = C4
game.group = gruppe_c
game.save!

game = Game.new(:gametime => '2010-06-18T00:00:00Z')
game.stadium = Stadium.find_by_name('Kapstadt')
game.team_one = C1
game.team_two = C3
game.group = gruppe_c
game.save!

game = Game.new(:gametime => '2010-06-18T00:00:00Z')
game.stadium = Stadium.find_by_name('Johannesburg (Ellis-Park-Stadion)')
game.team_one = C4
game.team_two = C2
game.group = gruppe_c
game.save!

game = Game.new(:gametime => '2010-06-23T00:00:00Z')
game.stadium = Stadium.find_by_name('Tshwane/Pretoria')
game.team_one = C2
game.team_two = C3
game.group = gruppe_c
game.save!

game = Game.new(:gametime => '2010-06-23T00:00:00Z')
game.stadium = Stadium.find_by_name('Nelson Mandela Bay/Port Elizabeth')
game.team_one = C4
game.team_two = C1
game.group = gruppe_c
game.save!

# Gruppe D Spiele
game = Game.new(:gametime => '2010-06-13T00:00:00Z')
game.stadium = Stadium.find_by_name('Durban')
game.team_one = D1
game.team_two = D2
game.group = gruppe_d
game.save!

game = Game.new(:gametime => '2010-06-13T00:00:00Z')
game.stadium = Stadium.find_by_name('Tshwane/Pretoria')
game.team_one = C3
game.team_two = C4
game.group = gruppe_d
game.save!

game = Game.new(:gametime => '2010-06-18T00:00:00Z')
game.stadium = Stadium.find_by_name('Nelson Mandela Bay/Port Elizabeth')
game.team_one = D1
game.team_two = D3
game.group = gruppe_d
game.save!

game = Game.new(:gametime => '2010-06-19T00:00:00Z')
game.stadium = Stadium.find_by_name('Rustenburg')
game.team_one = D4
game.team_two = D2
game.group = gruppe_d
game.save!

game = Game.new(:gametime => '2010-06-23T00:00:00Z')
game.stadium = Stadium.find_by_name('Nelspruit')
game.team_one = D2
game.team_two = D3
game.group = gruppe_d
game.save!

game = Game.new(:gametime => '2010-06-23T00:00:00Z')
game.stadium = Stadium.find_by_name('Johannesburg (Soccer City)')
game.team_one = D4
game.team_two = D1
game.group = gruppe_d
game.save!

# Gruppe E Spiele
game = Game.new(:gametime => '2010-06-14T00:00:00Z')
game.stadium = Stadium.find_by_name('Johannesburg (Soccer City)')
game.team_one = E1
game.team_two = E2
game.group = gruppe_e
game.save!

game = Game.new(:gametime => '2010-06-14T00:00:00Z')
game.stadium = Stadium.find_by_name('Mangaung/Bloemfontein')
game.team_one = E3
game.team_two = E4
game.group = gruppe_e
game.save!

game = Game.new(:gametime => '2010-06-19T00:00:00Z')
game.stadium = Stadium.find_by_name('Durban')
game.team_one = E1
game.team_two = E3
game.group = gruppe_e
game.save!

game = Game.new(:gametime => '2010-06-19T00:00:00Z')
game.stadium = Stadium.find_by_name('Tshwane/Pretoria')
game.team_one = E4
game.team_two = E2
game.group = gruppe_e
game.save!

game = Game.new(:gametime => '2010-06-24T00:00:00Z')
game.stadium = Stadium.find_by_name('Rustenburg')
game.team_one = E2
game.team_two = E3
game.group = gruppe_e
game.save!

game = Game.new(:gametime => '2010-06-24T00:00:00Z')
game.stadium = Stadium.find_by_name('Kapstadt')
game.team_one = E4
game.team_two = E1
game.group = gruppe_e
game.save!

# Gruppe F Spiele
game = Game.new(:gametime => '2010-06-14T00:00:00Z')
game.stadium = Stadium.find_by_name('Kapstadt')
game.team_one = F1
game.team_two = F2
game.group = gruppe_f
game.save!

game = Game.new(:gametime => '2010-06-15T00:00:00Z')
game.stadium = Stadium.find_by_name('Rustenburg')
game.team_one = F3
game.team_two = F4
game.group = gruppe_f
game.save!

game = Game.new(:gametime => '2010-06-20T00:00:00Z')
game.stadium = Stadium.find_by_name('Nelspruit')
game.team_one = F1
game.team_two = F3
game.group = gruppe_f
game.save!

game = Game.new(:gametime => '2010-06-20T00:00:00Z')
game.stadium = Stadium.find_by_name('Mangaung/Bloemfontein')
game.team_one = F4
game.team_two = F2
game.group = gruppe_f
game.save!

game = Game.new(:gametime => '2010-06-24T00:00:00Z')
game.stadium = Stadium.find_by_name('Polokwane')
game.team_one = F2
game.team_two = F3
game.group = gruppe_f
game.save!

game = Game.new(:gametime => '2010-06-24T00:00:00Z')
game.stadium = Stadium.find_by_name('Johannesburg (Ellis-Park-Stadion)')
game.team_one = F4
game.team_two = F1
game.group = gruppe_f
game.save!

# Gruppe G Spiele    
game = Game.new(:gametime => '2010-06-15T00:00:00Z')
game.stadium = Stadium.find_by_name('Johannesburg (Ellis-Park-Stadion)')
game.team_one = G1
game.team_two = G2
game.group = gruppe_g
game.save!

game = Game.new(:gametime => '2010-06-15T00:00:00Z')
game.stadium = Stadium.find_by_name('Nelson Mandela Bay/Port Elizabeth')
game.team_one = G3
game.team_two = G4
game.group = gruppe_g
game.save!

game = Game.new(:gametime => '2010-06-20T00:00:00Z')
game.stadium = Stadium.find_by_name('Johannesburg (Soccer City)')
game.team_one = G1
game.team_two = G3
game.group = gruppe_g
game.save!

game = Game.new(:gametime => '2010-06-21T00:00:00Z')
game.stadium = Stadium.find_by_name('Kapstadt')
game.team_one = G4
game.team_two = G2
game.group = gruppe_g
game.save!

game = Game.new(:gametime => '2010-06-25T00:00:00Z')
game.stadium = Stadium.find_by_name('Nelspruit')
game.team_one = G2
game.team_two = G3
game.group = gruppe_g
game.save!

game = Game.new(:gametime => '2010-06-25T00:00:00Z')
game.stadium = Stadium.find_by_name('Durban')
game.team_one = G4
game.team_two = G1
game.group = gruppe_g
game.save!

# Gruppe H Spiele
game = Game.new(:gametime => '2010-06-16T00:00:00Z')
game.stadium = Stadium.find_by_name('Durban')
game.team_one = H1
game.team_two = H2
game.group = gruppe_h
game.save!

game = Game.new(:gametime => '2010-06-16T00:00:00Z')
game.stadium = Stadium.find_by_name('Nelspruit')
game.team_one = H3
game.team_two = H4
game.group = gruppe_h
game.save!

game = Game.new(:gametime => '2010-06-21T00:00:00Z')
game.stadium = Stadium.find_by_name('Johannesburg (Ellis-Park-Stadion)')
game.team_one = H1
game.team_two = H3
game.group = gruppe_h
game.save!

game = Game.new(:gametime => '2010-06-21T00:00:00Z')
game.stadium = Stadium.find_by_name('Nelson Mandela Bay/Port Elizabeth')
game.team_one = H4
game.team_two = H2
game.group = gruppe_h
game.save!

game = Game.new(:gametime => '2010-06-25T00:00:00Z')
game.stadium = Stadium.find_by_name('Mangaung/Bloemfontein')
game.team_one = H2
game.team_two = H3
game.group = gruppe_h
game.save!

game = Game.new(:gametime => '2010-06-25T00:00:00Z')
game.stadium = Stadium.find_by_name('Tshwane/Pretoria')
game.team_one = H4
game.team_two = H1
game.group = gruppe_h
game.save!


# Finalrunden
achtelfinale  = Round.create(:name => "Achtelfinale")
viertelfinale = Round.create(:name => "Viertelfinale")
halbfinale    = Round.create(:name => "Halbfinale")
finale34      = Round.create(:name => "Finale 3. und 4. Platz")
finale        = Round.create(:name => "Finale")

# Achtelfinale
game = Game.new( :gametime => '2010-06-26T00:00:00Z')
game.stadium = Stadium.find_by_name("Nelson Mandela Bay/Port Elizabeth")
game.team_one = gruppe_a.leader
game.team_two = gruppe_b.second_leader
game.save!

achtelfinale.games << game

game = Game.new( :gametime => '2010-06-26T00:00:00Z')
game.stadium = Stadium.find_by_name("Rustenburg")
game.team_one = gruppe_c.leader
game.team_two = gruppe_d.second_leader
game.save!

achtelfinale.games << game

game = Game.new( :gametime => '2010-06-27T00:00:00Z')
game.stadium = Stadium.find_by_name("Johannesburg (Soccer City)")
game.team_one = gruppe_b.leader
game.team_two = gruppe_a.second_leader
game.save!

achtelfinale.games << game

game = Game.new( :gametime => '2010-06-27T00:00:00Z')
game.stadium = Stadium.find_by_name("Mangaung/Bloemfontein")
game.team_one = gruppe_d.leader
game.team_two = gruppe_c.second_leader
game.save!

achtelfinale.games << game

game = Game.new( :gametime => '2010-06-28T00:00:00Z')
game.stadium = Stadium.find_by_name("Durban")
game.team_one = gruppe_e.leader
game.team_two = gruppe_f.second_leader
game.save!

achtelfinale.games << game

game = Game.new( :gametime => '2010-06-28T00:00:00Z')
game.stadium = Stadium.find_by_name("Johannesburg (Ellis-Park-Stadion)")
game.team_one = gruppe_g.leader
game.team_two = gruppe_h.second_leader
game.save!

achtelfinale.games << game

game = Game.new( :gametime => '2010-06-29T00:00:00Z')
game.stadium = Stadium.find_by_name("Tshwane/Pretoria")
game.team_one = gruppe_f.leader
game.team_two = gruppe_e.second_leader
game.save!

achtelfinale.games << game

game = Game.new( :gametime => '2010-06-29T00:00:00Z')
game.stadium = Stadium.find_by_name("Kapstadt")
game.team_one = gruppe_h.leader
game.team_two = gruppe_g.second_leader
game.save!

achtelfinale.games << game

#Viertelfinale
game = Game.new( :gametime => '2010-07-02T00:00:00Z')
game.stadium = Stadium.find_by_name("Johannesburg (Soccer City)")
game.team_one = achtelfinale.leader
game.team_two = achtelfinale.second_leader
game.save!

viertelfinale.games << game

game = Game.new( :gametime => '2010-07-02T00:00:00Z')
game.stadium = Stadium.find_by_name("Nelson Mandela Bay/Port Elizabeth")
game.team_one = achtelfinale.fifth_place
game.team_two = achtelfinale.sixth_place
game.save!

viertelfinale.games << game

game = Game.new( :gametime => '2010-07-03T00:00:00Z')
game.stadium = Stadium.find_by_name("Kapstadt")
game.team_one = achtelfinale.third_place
game.team_two = achtelfinale.fourth_place
game.save!

viertelfinale.games << game

game = Game.new( :gametime => '2010-07-03T00:00:00Z')
game.stadium = Stadium.find_by_name("Johannesburg (Ellis-Park-Stadion)")
game.team_one = achtelfinale.seventh_place
game.team_two = achtelfinale.eighth_place
game.save!

viertelfinale.games << game

# Halbfinale
game = Game.new( :gametime => '2010-07-06T00:00:00Z')
game.stadium = Stadium.find_by_name("Kapstadt")
game.team_one = viertelfinale.leader
game.team_two = viertelfinale.second_leader
game.save!

halbfinale.games << game

game = Game.new( :gametime => '2010-07-10T00:00:00Z')
game.stadium = Stadium.find_by_name("Durban")
game.team_one = halbfinale.third_place
game.team_two = halbfinale.fourth_place
game.save!

finale34.games << game

# Spiel um 3. und 4. Platzierung

# Finale, Ooooohhhooooo!!!
game = Game.new( :gametime => '2010-07-11T00:00:00Z')
game.stadium = Stadium.find_by_name("Johannesburg (Soccer City)")
game.team_one = halbfinale.leader
game.team_two = halbfinale.second_leader
game.save!

finale.games << game



