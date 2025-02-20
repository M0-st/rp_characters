require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "should create character" do
    visit characters_url
    click_on "New character"

    fill_in "Backstory", with: @character.backstory
    fill_in "Image", with: @character.image
    fill_in "Level", with: @character.level
    fill_in "Name", with: @character.name
    fill_in "Path", with: @character.path
    fill_in "Race", with: @character.race
    fill_in "User", with: @character.user_id
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "should update Character" do
    visit character_url(@character)
    click_on "Edit this character", match: :first

    fill_in "Backstory", with: @character.backstory
    fill_in "Image", with: @character.image
    fill_in "Level", with: @character.level
    fill_in "Name", with: @character.name
    fill_in "Path", with: @character.path
    fill_in "Race", with: @character.race
    fill_in "User", with: @character.user_id
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "should destroy Character" do
    visit character_url(@character)
    click_on "Destroy this character", match: :first

    assert_text "Character was successfully destroyed"
  end
end
