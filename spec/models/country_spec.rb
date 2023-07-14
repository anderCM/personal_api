# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Country, type: :model do
  before do
    @default_name = 'United States'
    @flag_icon = 'https://flagpedia.net/data/flags/w580/us.webp'
  end
  it 'is invalid without a name' do
    country = Country.new(phone_code: 2, flag_icon: @flag_icon)
    country.valid?
    expect(country.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without a name type string' do
    country = Country.new(name: 12, phone_code: 2, flag_icon: @flag_icon)
    country.valid?
    expect(country.errors[:name]).to include('Only letters allowed')
  end

  it 'is invalid without a phone_code' do
    country = Country.new(name: @default_name, flag_icon: @flag_icon)
    country.valid?
    expect(country.errors[:phone_code]).to include("can't be blank")
  end

  it 'is invalid with a short phone_code' do
    country = Country.new(name: @default_name, phone_code: 2, flag_icon: @flag_icon)
    country.valid?
    expect(country.errors[:phone_code]).to include('is too short (minimum is 2 characters)')
  end

  it 'is invalid without a phone_code type number' do
    country = Country.new(name: @default_name, phone_code: 'Tsad', flag_icon: @flag_icon)
    country.valid?
    expect(country.errors[:phone_code]).to include('is not a number')
  end

  it 'is invalid without a flag_icon' do
    country = Country.new(name: @default_name)
    country.valid?
    expect(country.errors[:flag_icon]).to include("can't be blank")
  end

  it 'is invalid without a flag_icon type URL' do
    country = Country.new(name: @default_name, phone_code: 25, flag_icon: 12)
    country.valid?
    expect(country.errors[:flag_icon]).to include('should be a valid URL')
  end
end
