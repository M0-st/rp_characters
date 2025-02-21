class Character < ApplicationRecord
  belongs_to :user

  enum :race, {
    human: 1,
    orc: 2,
    elf: 3,
    dwarf: 4,
    halfling: 5,
    gnomme: 6
  }

  enum :path, {
    knight: 1,
    rogue: 2,
    barbarian: 3,
    wizard: 4,
    druid: 5,
    monk: 6,
    priest: 7,
    sorcerer: 8
  }

  def to_s
    name
  end
end
