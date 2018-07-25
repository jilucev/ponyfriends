class MagicalPower < ActiveRecord::Base

  # Declares the winner in a battle of skills
  def declare_winning_power(power_one, power_two)
    return 'tie' if power_one.intensity == power_two.intesnsity
    power_one.intensity > power_two.intensity ? power_one : power_two
  end
end
