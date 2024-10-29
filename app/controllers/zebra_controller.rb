class ZebraController < ApplicationController

  def home

    render({ :template => "dice_roll/home" })


  end  


  def two_six

    @rolls = []
    2.times do
      die = rand(1..6)
      @rolls.push(die)
    end
    render({ :template => "dice_roll/two_six" })
  end




  def two_ten

    @rolls = []
    2.times do
      die = rand(1..10)
      @rolls.push(die)
    end

    render({ :template => "dice_roll/two_ten" })

  end



  def one_twenty

    @rolls = []
    1.times do
      die = rand(1..20)
      @rolls.push(die)
    end

    render({ :template => "dice_roll/one_twenty" })
  end


  def five_four

    @rolls = []
    5.times do
      die = rand(1..4)
      @rolls.push(die)
    end

    render({ :template => "dice_roll/five_four" })

  end


  def flexible
  
    @num_dice=params.fetch("alice").to_i
    @num_faces=params.fetch("zebra").to_i
  
    @rolls=[]

    @num_dice.times do
  
      die=rand(1..@num_faces)
      @rolls.push(die)
  
    end

    "#{@rolls}"
    render({ :template => "dice_roll/flexible" })

  end
  

  

  

end
