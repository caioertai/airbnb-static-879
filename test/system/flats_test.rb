require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index" do
    # DSL
    visit "/"

    assert_selector "h1", text: "AirBnB Static!"
    assert_text "Charm at the Steps of the Sacre Coeur/Montmartre"
  end
end
