require 'rails_helper'

RSpec.describe List, type: :model do
  describe '#create' do
    before do
      @list = FactoryBot.build(:list)
    end

    it 'titleが存在すれば登録できること' do
      expect(@list).to be_valid
    end

    it 'dayが空でも登録できること' do
      @list.day = nil
      expect(@list).to be_valid
    end

    it 'explainが空でも登録できること' do
      @list.explain = ""
      expect(@list).to be_valid
    end

    it 'titleが空だと登録できない' do
      @list.title = ""
      @list.valid?
      expect(@list.errors.full_messages).to include("Title can't be blank")
    end

 end

end 
