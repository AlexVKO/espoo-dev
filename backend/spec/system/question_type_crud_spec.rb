require 'rails_helper'

RSpec.describe 'question_type CRUD', type: :system do
  include Devise::Test::IntegrationHelpers
  describe 'CRUD' do
    let!(:question_type) { create(:question_type) }

    before do
      sign_in create(:user)
    end

    it 'list question_type' do
      visit '/admin/question_types/'

      expect(page).to have_text(question_type.name)
    end

    it 'Delete question_type' do
      visit '/admin/question_types'

      click_on 'Destroy'
      page.accept_alert

      expect(page).to have_text('Question type was successfully destroyed.')
    end
  end
end
