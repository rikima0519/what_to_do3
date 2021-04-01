require 'rails_helper'

RSpec.describe List, type: :model do
  describe '#create' do
    before do
      @list = FactoryBot.build(:list)
    end

    it 'title、day、explainが存在すれば登録できること' do
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

    it 'titleが1文字以上ないと登録できないこと' do
      @list.title = ""
      @list.valid?
      expect(@list.errors.full_messages).to include("Title is too short (minimum is 1 character)")
    end

 end

end 
