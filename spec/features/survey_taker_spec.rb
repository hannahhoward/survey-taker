require 'spec_helper'
require 'faker'

RSpec.describe 'taking a survey', :type => :feature do
  it 'visits a site' do
    visit 'https://action.donaldjtrump.com/mainstream-media-accountability-survey/'
    choose 'id_question_3382_1'
    choose 'id_question_3383_0'
    choose 'id_question_3384_0'
    choose 'id_question_3385_1'
    check 'id_question_3387_1'
    check 'id_question_3387_2'
    choose 'id_question_3392_0_0'
    choose 'id_question_3393_0_1'
    choose 'id_question_3394_0_1'
    choose 'id_question_3395_0_0'
    choose 'id_question_3396_0_1'
    choose 'id_question_3397_0_1'
    choose 'id_question_3399_0_1'
    choose 'id_question_3400_0_1'
    choose 'id_question_3402_0_1'
    choose 'id_question_3403_0_1'
    choose 'id_question_3404_0_1'
    choose 'id_question_3406_0_1'
    choose 'id_question_3407_0_1'
    choose 'id_question_3408_0_1'
    choose 'id_question_3409_0_1'
    choose 'id_question_3410_0_1'
    choose 'id_question_3411_1'
    fill_in 'id_full_name', :with => "#{Faker::Name.first_name} #{Faker::Name.last_name}"
    fill_in 'id_email', :with => Faker::Internet.email
    fill_in 'id_postal_code', :with => Faker::Address.zip.slice(0,5)
    click_on 'Record My Vote >>'
    sleep(1)
    expect(page).to have_text('Take the Next Step')
  end
end