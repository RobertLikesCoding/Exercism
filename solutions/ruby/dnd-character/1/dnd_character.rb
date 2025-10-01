class DndCharacter
  attr_reader :strength, :dexterity, :constitution,
              :intelligence, :wisdom, :charisma, :hitpoints

  def self.modifier(constitution)
    ((constitution - 10) / 2).floor
  end

  def initialize
    @strength = roll_dice
    @dexterity = roll_dice
    @constitution = roll_dice
    @intelligence = roll_dice
    @wisdom = roll_dice
    @charisma = roll_dice
    @hitpoints = 10 + DndCharacter.modifier(@constitution)
  end

  private

  def roll_dice
    dice = [1, 2, 3, 4, 5, 6]
    scores = []
    4.times do
      scores << dice.sample
    end
    scores.max(3).sum
  end
end
