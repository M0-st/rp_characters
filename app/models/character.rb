class Character < ApplicationRecord
  belongs_to :user

  enum race: {
    human: 0,
    orc: 1,
    elf: 2,
    dwarf: 3,
    halfling: 4,
    gnomme: 5,
  }

  def to_s
    name
  end
end
