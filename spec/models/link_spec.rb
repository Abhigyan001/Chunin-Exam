require 'rails_helper'

RSpec.describe Link do
  it 'is valid if it has an original URL and a lookup code' do
    link = Link.new(
      original_url: 'https://www.favouritewebsite.com/articles/how-to-cook',
      lookup_code: '1234567'
    )
    expect(link.valid?).to be true
  end

  it 'is invalid if the URL is not formatted properly' do
    link = Link.new(
      original_url: 'adhghajksdhakjdh',
      lookup_code: '1234567'
    )
    expect(link.valid?).to be false
  end

  it 'is invalid if it doesnot have a lookup code' do
    link = Link.new(
      original_url: 'https://www.favouritewebsite.com/articles/how-to-cook'
    )
    expect(link.valid?).to be false
  end

  it 'is invalid if it doesnot have an original URL' do
    link = Link.new(
      lookup_code: '1234567'
    )
    expect(link.valid?).to be false
  end

  it 'is invalid if the lookup code already exists' do
    link = Link.new(
      original_url: 'https://www.favouritewebsite.com/articles/how-to-cook',
      lookup_code: '1234567'
    )
    link.save

    link2 = Link.new(
      original_url: 'https://www.favouritewebsite.com/articles/how-to-bake',
      lookup_code: '1234567'
    )
    expect(link2.valid?).to be false
  end
end
