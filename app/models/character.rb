class Character < ApplicationRecord
  belongs_to :user

  enum race: {
    human: 1,
    orc: 2,
    elf: 3,
    dwarf: 4,
    halfling: 5,
    gnomme: 6
  }

  def to_s
    name
  end
end
