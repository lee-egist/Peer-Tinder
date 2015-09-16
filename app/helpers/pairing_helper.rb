module PairingHelper

  def nestOptionsArray
    challenges = Challenge.all
    options = []
    challenges.each do |challenge|
      options << [(challenge.name + "    :  " + challenge.time_length.to_s + "hrs"), challenge.id]
    end
    return options
  end
end
