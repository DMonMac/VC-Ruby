# Challenge:
# The new country of Vivixx has decided to hold an election!
# They will be choosing their first ever president.
# With what you have learned, can you help them to help in the voting process?"
#
# Candidates:
# 1. Mika
# 2. Reggie
# 3. Kenneth
# 4. Trevor
#
# 4 candidates, 20 voters.

#------------------------------ RE-INITIALIZE ------------------------------#
def reset
@candidates = ['Mika', 'Reggie', 'Kenneth', 'Trevor']
@votes = [m=0, r=0, k=0, t=0]
@canname = ''
@vote =''
@v=0
@tie = []
end
#---------------------------------------------------------------------------#


#------------------------------ HEADER ------------------------------#
def header
  system "cls"
  puts ('#'*93 +"\n")*2 + (' '*93 +"\n")+('Vivixx Elections 2017'.prepend(' '*5).concat(' '*5).center(93,'#')+"\n")+(' '*93 +"\n")+('#'*93 +"\n")*2
end
#--------------------------------------------------------------------#


#------------------------------ WELCOME NOTES AND LIST OF CANDIDATES ------------------------------#
def hi
  puts "\n"*2+'Welcome to Vivixx Elections 2017. '+ "\n"*2
  puts "\n"+'Here are the candidates ' + "[Votes in: #{@v}]:"+"\n"*2
  ctr=0
  @candidates.each do
    ctr +=1
    puts "#{ctr}. #{@candidates[ctr-1]}"
  end
  vote
end
#--------------------------------------------------------------------------------------------------#


#-------------------------------------------------- ADD VOTE TO A CANDIDATE --------------------------------------------------#
def vote
  while @v < 20 do
    puts "\n"*2+'Type the name of the candidate you want to vote for:'+"\n"*2
    @vote = gets.chomp.strip
    case @vote.downcase
      when 'mika'
        @votes[0]+=1
        @v+=1
        puts "\n"+'You voted for Mika.'.center(93)+"\n"*2+'Thank you for voting.'.center(93)
        gets
        header
        hi
        break #so it won't go through the rest of the loop
      when 'reggie'
        @votes[1]+=1
        @v+=1
        puts "\n"+'You voted for Reggie.'.center(93)+"\n"*2+'Thank you for voting.'.center(93)
        gets
        header
        hi
        break
      when 'kenneth'
        @votes[2]+=1
        @v+=1
        puts "\n"+'You voted for Kenneth.'.center(93)+"\n"*2+'Thank you for voting.'.center(93)
        gets
        header
        hi
        break
       when 'trevor'
        @votes[3]+=1
        @v+=1
        puts "\n"+'You voted for Trevor.'.center(93)+"\n"*2+'Thank you for voting.'.center(93)
        gets
        header
        hi
        break
       when 'end'
        votetally
        break
       else
        puts "\n"+'That is not one of the candidates. Pls try again.'.center(93)
        gets
        header
        hi
    end
  end
votetally
end
#-----------------------------------------------------------------------------------------------------------------------------#


#-------------------------------------------------- TALLY THE VOTES --------------------------------------------------#
def votetally
  system 'cls'
  header
  puts "\n"*2+'*'*93+"\n"*2
  puts 'Here are the results of the election '+"[Votes: #{@v}]:" +"\n"*2
  ctr=0
  @candidates.each do
    ctr +=1
    puts "#{@candidates[ctr-1]} = #{@votes[ctr-1]} (#{(@votes[ctr-1].to_f.round(4)/@v)*100}%)"
  end
  counttie
end

def counttie
  if @v==0
    puts "\n"*2+'*'*93+"\n"*2
    puts"No one voted. Nobody wins. Let's vote again."
    gets
    system "cls"
    header
    hi
  else
    ctr=0
      @votes.each do
        ctr +=1
        if @votes[ctr-1] == @votes.max
          @tie.push(@candidates[ctr-1])
        end
      end
  end
    resultsfin
end
#-----------------------------------------------------------------------------------------------------------------#


#------------------------------------------------------- VIEW RESULTS -------------------------------------------------------#
def resultsfin
  if @tie.length > 1
    puts "\n"*2 + "It's a tie between #{@tie[0..@tie.length-2]} and #{@tie[-1]}.\nThe voting will repeat until someone wins."+"\n"*2
    gets
    system "cls"
    reset
    header
    hi
  else
      puts "\n"*2+'*'*93+"\n"*2
      puts "The winner is #{@candidates[@votes.index(@votes.max)]} with #{@votes.max} vote(s)."+"\n"*2
      puts 'That is the end of the elections. Thanks to everyone who voted!'+"\n"*2
      gets
      system 'cls'
      exit
  end
end
#----------------------------------------------------------------------------------------------------------------------------#


#------------------------------------------------------- INITIAL ACTIONS -------------------------------------------------------#
reset
header
hi
#-------------------------------------------------------------------------------------------------------------------------------#
